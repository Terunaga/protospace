== PROTOSPACE

# Ruby version
* ruby 2.1.3

# Overview
This application is a service which a user can post some contents along with images and tags, and other users can comment and like the posts.

# Database creation(tables and the respective columns)


## users
* name
* member
* profile
* works
* avatar

## prototypes
* title
* catch_copy
* concept
* user_id

## thumbnails
* prototype_id
* name
* status


## comments
* prototype_id
* user_id
* text

## tags
* prototype_id

## likes
* prototype_id
* user_id


# Relations

## user
* has many prototypes
* has many comments
* has many likes

## prototype
* has many comments
* has many tags
* has many likes
* has many thumbnails
