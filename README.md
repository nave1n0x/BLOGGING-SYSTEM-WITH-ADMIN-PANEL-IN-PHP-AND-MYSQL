# Blog-CMS-PHP-MYSQL
<h1>BLOG CMS In PHP + MYSQSL</h1>
A blog as you know it is an application where some users (Admin users) can create, edit, update and publish articles to make them available in the public to read and maybe comment on. Users and the public can browse through a catalog of these articles and click to anyone to read more about the article and comment on them.

Features:
A user registration system that manages two types of users: Admin and Normal Users
The blog will have an admin area and a public area separate from each other
The admin area will be accessible only to logged in admin users and the public area to the normal users and the general public
In the admin section, two types of admins exist: 
Admin:
Can create, view, update, publish/unpublish and delete ANY post.
Can also create, view, update and delete topics.
An Admin user (and only an Admin user) can create another admin user or Author
Can view, update and delete other admin users
Author:
Can create, view, update and delete only posts created by themselves
They cannot publish a post. All publishing of posts is done by the Admin user.
Only published posts are displayed in the public area for viewing
Each post is created under a particular topic
A many-to-many relationship exists between posts and topics.
The public page lists posts; each post displayed with a featured image, author, and date of creation.
The user can browse through all posts listings under a particular topic by clicking on the topic
When a user clicks on a post, they can view the full post and comment at the bottom of the posts.
A Disqus commenting system is implemented which allows users to comment using social media accounts with platforms like Facebook, GooglePlus, Twitter.
