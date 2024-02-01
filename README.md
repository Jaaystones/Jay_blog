# Blog App Development

# Overview

```This document provides an overview of the development process for a basic blog application. The application is built using Ruby on Rails and follows standard MVC (Model-View-Controller) architecture. It includes features such as creating, editing, deleting articles, adding comments, and implementing visibility status.```

# Table of Contents
```
1. Setting Up the Project
2. Creating Articles
3. Adding Comments
4. Visibility Status

```
# 1. Setting Up the Project
The project setup involves creating a new Ruby on Rails application. Key steps include:
```
Installing Rails: gem install rails
Creating a new Rails app: rails new blog_app
Setting up the database: rails db:create and rails db:migrate

```
# 2. Creating Articles
## 2.1 Generating the Article Model and Controller
```
Generating the Article model: rails generate model Article title:string body:text status:string
Running migrations: rails db:migrate
Generating the Articles controller: rails generate controller Articles
```

## 2.2 Implementing CRUD Operations for Articles
```
Setting up routes in config/routes.rb
Creating views for listing, showing, creating, updating, and deleting articles
Implementing actions in the ArticlesController for CRUD operations
```

# 3. Adding Comments
## 3.1 Generating the Comment Model and Controller

```
Generating the Comment model: rails generate model Comment commenter:string body:text article:references
Running migrations: rails db:migrate
Generating the Comments controller: rails generate controller Comments

```

## 3.2 Associating Comments with Articles
```
Setting up associations in the Article and Comment models
Modifying the views and controllers to display and manage comments
```
# 4. Visibility Status
## 4.1 Creating a Concern for Visibility
```
Implementing a Visible concern to manage visibility status
Defining valid statuses and adding validation in the Article model
```

## 4.2 Updating Views and Controllers
```
Modifying the views and controllers to handle visibility status
Logging validation errors in the create action for debugging

```

# Resources
[ABC of rails](https://guides.rubyonrails.org/)