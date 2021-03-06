# Authors:
- Francisco Farias
- Sebastián Zanni

******************************************************************************************
IMPORTANT!!
Records are created in the database! To test the seed.rb file, drop the db using rake db:drop, and then u have 2 options for creating the db and records:
a) rake db:migrate
   rake db:seed

b) rake db:setup
To create an Admin:
- rake admin:create_admin_user #This will let you create a password for the admin
- To log in as an admin, go to localhost:3000/admin/sign_in
- The email is always admin@teemoevents.com

*******************************************************************************************
Assignment 4

We've managed to implement all the required features that were asked.

In addition, we implemented a report system for not only events, but for comments and organizations. Reports can be made only by users that are not creators or admin of the content.

Also, we managed to implement Google authentication log in and if the Google account does not have a created account it creates one automatically, but some data of the profile have to be edited afterwards because the Google account does not provide them.

All the existing accounts have password 123456.

For simplicity reasons, all the created users by registration are part of the organization of id=1, but when you create a new user with the sign up it doesnt belongs to an organization. (Must fix)

The homepage for the admin is diferent, as it shows the status of the web page, with the amount of users, organizations and events.

Bugs:
- For some reason, sometimes when the admin tries to delete a certain user or a certain event the applications throws an error and sometimes it works perfectly fine.
******************************************************************************************

Assignment 3

We've managed to implement all the required features that were asked, except for the invitation and a functional voting system.
- For creating an comment, event and organization, as we dont have a log in implementation yet, all the comments are made by the same person.
- We implemented the operation delete user, but if the user of id=1 is removed, nothing will be shown, this is because as we don´t have a log in implementation, everything that our application shows is linked to this user (It's like the user of the id=1 is the logged in).
- Also, we didn't implemented the admin namespace and routes.

Disclaimer: We are aware that we don´t have consistency with the wireframes of the assignment 1.1, this is because we think that the previous model had flaws and we wanted to correct them and do them better.
******************************************************************************************
Assignment 2

IMPORTANT!!
Please run the aplication in a laptop-destop resolution (lower resolutions like 1024x768 doesn't work right).
We used only one stylesheet for this application (application.css), creating ids and classes for every view.

- The application permits a read only navegation of the web page, we assumed that the user is already logged in. 
	The application includes the following views:
	- A home page with the users events and organizations.
	- A page for all the events.
	- A page for all the organizations.
	- The user profile.
	- A view for creating a new event.
	- A mailbox view with the invitations.
	- A logout view.
	- Specific event and organization page.

- The are some views that are missing like:
	- Edit events, organization and profile.
	- A view for photos, videos and attachments of an organization.

- We developed strictly RESTful API to perform CRUD operations on Event and Comment resources.
	The postman API tests are in the next link: https://www.getpostman.com/collections/980ceec88199506e1d1d


******************************************************************************************
Assignment 1.2

Model Layer Functionality and Behavior:

Through point 1 to 10, we wrote how the queries should be written based on our model.

1. User.find(1).event_creator.events.distinct.pluck(:name) 

2. UserProfile.joins(:user).where(users: {organization_id:1}).pluck(:username)

3. Organization.find(1).events.where(events: {publicEvent:true}).distinct.pluck(:name)

4. Organization.find(1).events.where(events: {publicEvent:false}).distinct.pluck(:name)

5. UserProfile.joins(user: {mailbox: :invitations}).where(invitations: {event_id:1}).pluck(:username)

6. UserProfile.joins(user: {event_guests: :vote}).where(event_guests: {event_id:1}).pluck(:username)

7. Event.find(1).comments.pluck(:message)

8. Comment.joins(event_guest: :user).where(users: {id:3}).pluck(:message)

9. UserProfile.joins(user: {organization_administrator: :organization}).where(organizations: {id:1}).pluck(:username)

10. UserProfile.joins(user: :system_administrator).pluck(:username)

Through point 11 to 15, we explained how validations and deletions work based on our model.

11. When creating a user, the email a validation is done to verify it's unique (two users can't have the same email)

12. When creating a user, the email format must be with like this: name@domain.com, or it won't be valid.

13. If an event is deleted, then all user who voted (Event Guests) will also be deleted, as well as the Start Date Poll of the event, Start Date Options of the event, votes of all Event Guests, invitations of the event and finally comments of the events,including  their replies.

14. In our model, every event belongs to an organization, so if an organization is deleted, every events belonging to this organization will be deleted, executing all deletions described in point 13.

15.	For every deleted user (despite their role), their User Profile and Mailbox (including their invitations) are deleted. Depending  on the user role, there are 4 cases possible when deleting a user:

 	a) User is a System Administrator: if the deleted user is a system administrator, then the system_administrator entity associated to this user will be deleted.

 	b) User is an Event Creator: if the deleted user is an event creator, then every event created by him will be deleted, following the deletions mentioned in point 13.

 	c) User is an Event Guest: if a user is an event guest, then the event guest associated to this user will be deleted from the event wich they are guests, including their comments and replies in the event.

 	d) User is an Organization Administrator: if the deleted user is an organization administrator, then the organization_administrator entity associated to this user will be deleted, deleting also the organization that was created by him. Following the deletions in point 14, and then 13 if the organization had any events.


