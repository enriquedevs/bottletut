import sqlite3
from bottle import route, run, debug, template, request, static_file, error

# only needed when you run Bottle on mod_wsgi
from bottle import default_app

@route('/todo')
def todo_list():

    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo WHERE status = '1';")
    result = c.fetchall()
    c.close()

    output = template('make_table', rows=result)
    return output

@route('/new', method='GET')
def new_item():

    if request.GET.get('save','').strip():

        new = request.GET.get('task', '').strip()
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()

        c.execute("INSERT INTO todo (task,status) VALUES (?,?)", (new,1))
        new_id = c.lastrowid

        conn.commit()
        c.close()

        return '<p>The new task was inserted into the database, the ID is %s</p>' % new_id

    else:
        return template('new_task.tpl')

@route('/edit/<no:int>', method='GET')
def edit_item(no):

    if request.GET.get('save','').strip():
        edit = request.GET.get('status','').strip()
        new_value = request.GET.get('task','').strip()

        if edit == 'open':
            status = 1
        else:
            status = 0

        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("UPDATE todo SET task = ?, status = ? WHERE id = ?", (new_value,status,no))
        conn.commit()
        c.close()
        
        return '<p>The item number %s was successfully updated</p>' %no

    else:
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("SELECT task FROM todo WHERE id = ?", (str(no),))
        cur_data = c.fetchone()

        return template('edit_task', old = cur_data, no = no)
    
@route('/delete/<no:int>', method='GET')
def edit_item(no):
    
    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("SELECT id FROM todo WHERE id = ?", (str(no),))
    id_to_delete = c.fetchone()
    
    if id_to_delete is not None:
        c.execute("DELETE FROM todo WHERE id = ?", (str(no),))
        conn.commit()
        c.close()
        return '<p>The item number %s was successfully deleted</p>' %no
    
    else:
        c.close()
        return '<p>The item number %s was already not present in the database</p>' %no

@route('/item<item:re:[0-9]+>')
def show_item(item):

        format = request.query.get('format');
        
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("SELECT task FROM todo WHERE id = ?", (item,))
        result = c.fetchall()
        c.close()
        
        if format == 'json':
            
            if not result:
                return {'task':'This item number does not exist!'}
            else:
                return {'Task': result[0]}
            
        else:
    
            if not result:
                return 'This item number does not exist!'
            else:
                return 'Task: %s' %result[0]

@route('/help')
def help():
    static_file('help.html', root='.')
    
@error(403)
def mistake403(code):
    return 'There is a mistake in your url!'

@error(404)
def mistake404(code):
    return 'Sorry, this page does not exist!'


debug(True)
run(reloader=True)
#remember to remove reloader=True and debug(True) when you move your application from development to a productive environment
