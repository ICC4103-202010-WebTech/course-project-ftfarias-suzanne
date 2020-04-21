# Authors:
- Francisco Farias
- Sebastián Zanni

******************************************************************************************
IMPORTANT!!
Records are created in the database! To test the seed.rb file, drop the db using rake db:drop, and then u have 2 options for creating the db and records:
a) rake db:migrate
   rake db:seed

b) rake db:setup

******************************************************************************************
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
