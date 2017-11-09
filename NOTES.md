notes.MD
requirements from the scaffold
string:title
string:description

The model name will be Post and the attributes will be title and description. The title attribute should be of type string and description should be of type text.

post model and migration

PostsController

index view
show view
new view

CRUD posts

rails generate scaffold Post title:string description:text --no-test-framework
