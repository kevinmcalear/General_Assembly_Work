Auth stands for authentication and authorization, but they are different things. 
authentication is passwords, logins
authorization is about what youre allowed to do. 
cookies are little files that are stored by your browser in a sandbox on your computer. it only interacts with your browser. 
they can store information that your server puts there. 
each browser has its own id stored inside a cookie.
every requests it sends, it sends that id with it. 
rails allows us on the server side to store all the info from these users. thats why the cookie just needs the id
the idea of a session is essential 
a session is multiple requests and responses happening in some order. 
hold information across sessions with a cookie -session id
in a hash you can store information about that session. 
sessions are really only accessible in the controller. 
in login page we create a new session
