Learning Objectives


  * Explain the client-server model
  * Define a "communicator protocol” - ref computer communications
  * Name the 4 basic parts of the internet protocol suite
  * The purpose of having a protocol “stack”
  * Basi s of HTTP requests and protocol
  * The 2 “modes” of using HTTP
  * The difference between GET and POST
  * The premise (in simple terms) of REST
  * The parts of a URL in detail

Ruby
Fundamentals of programming 
Rspec
Software development process 
Modeling
Behavior models aka classes
aka problems sets
data models ERD
Persistent storage
files.. RDBMs SQL
ORM - ActiveRecord

networking
running a program as a service
structuring applications for the internet MVC
Rails, framework of choice 
Sinatra is very lightweight 

CP
syntax : grammar and structure
semantics : meaning
synchronization 

abstraction / encapsulation 

Implementation is abstracted from its users , it is described in standards agreed upon by its users

Web services
allow one program to provide a service over the web to another program in a neutral format
allow api like interface over the web
soap, websockets, rest, aws

Application layer
provides a protocol that authenticates clients and servers and ensures error recovery , data integrity , and privacy 
creates the relationship between client and server from an applied perspective 
ftp, smtp, imap/pop/email, http (protocal that links users between nodes of text (html) over a network)
DNS - translates ip address to url , provides a service to internet 

Transport Layer
ensures the reliable error free transportation of data
UDP - all data is grouped into datagrams, no too much reliability for error checking . UDP is speed over reliablity . skype
TCP - provides error check delivery over internet . for html


Internet Layer
routes data between computers (hosts)
ip

Link layer
transmits from one node to another 

Http reqest:::
verb get describes what it does
resource path / what it wants to do that to
domain / host where it wants to do that 

POST     CREATE     INSERT
GET       READ        SELECT
PUT       UPDATE    UPDATE
DELETE  DESTROY  DELETE 

Common mode:
POST can be used to create update or destroy

We work in a mode walled RESTful
Crud verbs 
Resource -> entity

scheme://domain:port/path?query.string#fragment_id
domain = no default, ip or name
port scheme dependent default
path - root default is / 
query string - none
fragment_id none, list a part of a web page to link to 
















