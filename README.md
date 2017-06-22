# ToDo App

* The repo contains the code for the tutorial app for bottle.py found at http://bottlepy.org/docs/dev/tutorial_app.html.
* It also contains an initialized database. Feel free to reference the tutorial page at bottlepy.org for more information on how to run the app, how it works, and anything else you might want to know about it.
* You can run the server as-is by running ‘python todo.py’ and pointing your browser to the address and port that’s indicated by the debug output.
* Once you have the app running and are able to connect to it via your browser, your mission, should you choose to accept it, is to complete the following tasks.

# Requirements

* Users have reported a bug where every time they edit a todo the description gets set to 'open'. Find the bug and fix it.
* Make it possible to add todos from the main "todo" list.
* Make it possible to delete todos from the main "todo" list.
* Make it possible to edit todos from the main "todo" list by linking to the appropriate 'edit' template.
* Consolidate the /json and /item APIs so that /item<num>?format=json returns json, but without ?format= it still returns plain text as it does now. You may assume consumers of the API will migrate immediately and can remove the /json API entirely.
* Make any API that writes to the database require a username that indicates who is making the change.
* Provide some simple form field or login form that captures the username and stores it in a session/cookie.
* Use a python decorator to check that a username was provided in the submitted data. Use this decorator on each API that will write to the database.
* If there is no username return and display an error to the user.
* Store the logged-in user’s username when committing a todo edit or addition and display it in a "last edited by" column in the list of todos.
* If you find any other bugs feel free to fix them.
* If you want to make the UX better, go for it.
* If you want to make the UI look better, go for it, especially if you want to show off your amazing front-end skills.

# Notes

* Run the app with the command 'python todo.py'.
* The application use cookies, enable cookies in the browser to run succesfully the app.
* The database has the following users: (username:enrique,password:admin), (username:spark,password:admin), (username:hamilton,password:admin)







