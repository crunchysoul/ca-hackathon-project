user1 = User.create!(email: 'a@a', password: '123456')
user2 = User.create!(email: 'b@b', password: '123456')
user3 = User.create!(email: 'c@c', password: '123456')
user4 = User.create!(email: 'd@d', password: '123456')

profile1 = Profile.create!(first_name: 'Glenn', last_name: 'Dimaliwat', date_of_birth: Date.parse('15/3/2078'), city: 'Manila', country: 'The Philippines', contact_number: '+610412345678', bio: 'He is The Man! sexy, strong, handsome! Confidence is his motto!', user: user1)
profile1 = Profile.create!(first_name: 'Josh', last_name: 'Chen', date_of_birth: Date.parse('17/9/2083'), city:'Forbidden City', country: 'China', contact_number: '+610412345678', bio: 'Hate mice so he won\'t buy any yummy roasted rats at the market! He enjoy spending his time collaborating at any projects he can on github.', user: user2)
profile1 = Profile.create!(first_name: 'John', last_name: 'Voon', date_of_birth: Date.parse('07/9/2089'), city:'Hong Kong City', country: 'Hong Kong', contact_number: '+610412345678', bio: 'He is the start behind any cult action movie in Hong Kong, martial artist and able to give speeches at multiple meetups while beating Chuck Norris up at the same time', user: user3)
profile1 = Profile.create!(first_name: 'Alessio', last_name: 'Palumbo', date_of_birth: Date.parse('05/9/2084'), city:'Trieste', country: 'Italy', contact_number: '+610412345678', bio: 'The mafia is scared of him, if you owe him you\'ll be damned! Yes, I am talking about you Nisal!', user: user4)

conversation1 = Conversation.create!
conversation2 = Conversation.create!

# conversation1
participation1 = Participation.create!(user: user1, conversation: conversation1)
participation2 = Participation.create!(user: user2, conversation: conversation1)

# conversation2
participation3 = Participation.create!(user: user1, conversation: conversation2)
participation4 = Participation.create!(user: user3, conversation: conversation2)

message1 = Message.create!(user: user1, conversation: conversation1, body: 'Hello')
message2 = Message.create!(user: user2, conversation: conversation1, body: 'Hi')