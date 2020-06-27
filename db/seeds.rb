# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create(email:"sizanni@miuandes.cl",password:"password")
#User.create(email:"ftfarias@miuandes.cl",password:"password")

User.create(email:"sizanni@miuandes.cl",password:"123456",name:"Sebastián",lastname:"Zanni",username:"sZanni14",bio:"usuario1",phone:"991220488",address:"Nuestra Sra del Rosario 360")
User.create(email:"ftfarias@miuandes.cl",password:"123456",name:"Francisco",lastname:"Farias",username:"FcoFarias",bio:"usuario2",phone:"997381923",address:"Av el Tranque 12654")
User.create(email:"jbarrientos@miuandes.cl",password:"123456",name:"Joaquin",lastname:"Barrientos",username:"Bayuyo",bio:"usuario3",phone:"99123123",address:"Rio Simme 5019")
Organization.create(name:"Grupo4",description:"Equipo Web Tech",picture:"a",bannerpicture:"a",membersnumber:"0",organization_administrator_id:1)
u1 = User.find_by( email:"sizanni@miuandes.cl")
u2 = User.find_by( email:"ftfarias@miuandes.cl")
u3 = User.find_by( email:"jbarrientos@miuandes.cl")
u1.organization_id = 1
u2.organization_id = 1
u3.organization_id = 1
u1.save!
u2.save!
u3.save!
Event.create(name:"Fonda Uandes",description:"Celebracion 18 Sept",location:"Uandes",picture:"a",publicEvent:true,event_creator_id:1,organization_id:1,finalVotingDay:"2020-08-20")
Event.create(name:"Mea Culpa",description:"Fiesta Mechona",location:"Sala Gente",picture:"a",publicEvent:false,event_creator_id:2,organization_id:1,finalVotingDay:"2020-08-20")
Event.create(name:"Salsa Festival",description:"A music festival with a salsa dance theme.",location:"Sala Omnium",picture:"a",publicEvent:false,event_creator_id:2,organization_id:1,finalVotingDay:"2020-08-20")
EventGuest.create(user_id:2,event_id:1)
EventGuest.create(user_id:3,event_id:1)
EventGuest.create(user_id:1,event_id:2)
EventGuest.create(user_id:3,event_id:2)
EventGuest.create(user_id:1,event_id:3)
Invitation.create(message:"Te invito al evento", event_id:1 , mailbox_id:2)
Invitation.create(message:"Te invito al evento", event_id:1 , mailbox_id:3)
Invitation.create(message:"Te invito al evento", event_id:2 , mailbox_id:1)
Invitation.create(message:"Te invito al evento", event_id:2 , mailbox_id:3)
StartDateOption.create(possiblestartdate:"2020-07-20",event_id:1)
StartDateOption.create(possiblestartdate:"2020-07-22",event_id:1)
StartDateOption.create(possiblestartdate:"2020-08-14",event_id:2)
StartDateOption.create(possiblestartdate:"2020-08-18",event_id:2)
StartDateOption.create(possiblestartdate:"2020-09-12",event_id:3)
StartDateOption.create(possiblestartdate:"2020-09-13",event_id:3)
Vote.create(event_guest_id:1,start_date_option_id:1)
Vote.create(event_guest_id:2,start_date_option_id:1)
Vote.create(event_guest_id:3,start_date_option_id:3)
Vote.create(event_guest_id:4,start_date_option_id:4)
Comment.create(message:"Very Nice!",event_guest_id:1,event_id:1)
Comment.create(message:"Can't wait to go!",event_guest_id:2,event_id:1)
Comment.create(message:"Armor is on",event_guest_id:4,event_id:2)
Reply.create(message:"See you there!",event_guest_id:2,comment_id:1)