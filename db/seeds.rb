user1 = User.create!(email: 'a@a', password: '123456')
user2 = User.create!(email: 'b@b', password: '123456')
user3 = User.create!(email: 'c@c', password: '123456')
user4 = User.create!(email: 'd@d', password: '123456')
user5 = User.create!(email: 'tom@gmail.com', password: '123456')
user6 = User.create!(email: 'anne@gmail.com', password: '123456')

profile1 = Profile.create!(first_name: 'Glenn', last_name: 'Dimaliwat', date_of_birth: Date.parse('15/3/2078'), city: 'Manila', country: 'The Philippines', contact_number: '+610412345678', bio: 'He is The Man! sexy, strong, handsome! Confidence is his motto!', user: user1, image_url: "glenn.jpg")
profile1 = Profile.create!(first_name: 'Josh', last_name: 'Chen', date_of_birth: Date.parse('17/9/2083'), city:'Forbidden City', country: 'China', contact_number: '+610412345678', bio: 'Hate mice so he won\'t buy any yummy roasted rats at the market! He enjoy spending his time collaborating at any projects he can on github.', user: user2, image_url: "chen.jpg")
profile1 = Profile.create!(first_name: 'John', last_name: 'Voon', date_of_birth: Date.parse('07/9/2089'), city:'Hong Kong City', country: 'Hong Kong', contact_number: '+610412345678', bio: 'He is the start behind any cult action movie in Hong Kong, martial artist and able to give speeches at multiple meetups while beating Chuck Norris up at the same time', user: user3, image_url: "john.jpg")
profile1 = Profile.create!(first_name: 'Alessio', last_name: 'Palumbo', date_of_birth: Date.parse('05/9/2084'), city:'Trieste', country: 'Italy', contact_number: '+610412345678', bio: 'The mafia is scared of him, if you owe him you\'ll be damned! Yes, I am talking about you Nisal!', user: user4, image_url: "alessio.jpg")
profile1 = Profile.create!(first_name: 'Anne', last_name: 'Smith', date_of_birth: Date.parse('05/9/1980'), city:'Trieste', country: 'Italy', contact_number: '+610412345678', bio: 'The mafia is scared of him, if you owe him you\'ll be damned! Yes, I am talking about you Nisal!', user: user4, image_url: "alessio.jpg")
profile1 = Profile.create!(first_name: 'Tom', last_name: 'Brown', date_of_birth: Date.parse('05/9/1990'), city:'Trieste', country: 'Italy', contact_number: '+610412345678', bio: 'The mafia is scared of him, if you owe him you\'ll be damned! Yes, I am talking about you Nisal!', user: user4, image_url: "alessio.jpg")


Listing.create!(name: 'Ol Jeans', description: 'Dirty pair of jeans', user: user1, category_id: 'products', item_type: 'no-trade', status: 0, image_url: 'jeans.jpg')
Listing.create!(name: 'Charm', description: 'A skill you are born with', user: user1, category_id: 'skills', item_type: 'no-trade', status: 0, image_url: 'charm.jpg')
Listing.create!(name: 'T-shirt', description: 'Very valuable: \'cause I worn it!!!', user: user1, price: 100, category_id: 'products', item_type: 'trade', status: 0, image_url: 't-shirt.jpg')
Listing.create!(name: 'Dancing', description: 'If you want to get the chicks!', user: user1, category_id: 'skills', item_type: 'trade', status: 0, image_url: 'dancing.jpg')

Listing.create!(name: 'Mandarin', description: 'Native but not willing to share!', user: user2, category_id: 'skills', item_type: 'no-trade', status: 0, image_url: 'mandarin.jpg')
Listing.create!(name: 'Post-it', description: 'My private collection of used post-it!', user: user2, price: 50, category_id: 'products', item_type: 'trade', status: 0, image_url: 'post-it.jpg')
Listing.create!(name: 'Emacs', description: 'So much better than Vim!', user: user2, category_id: 'skills', item_type: 'trade', status: 0, image_url: 'emacs.png')
Listing.create!(name: 'Mouse', description: 'Useless!', user: user2, category_id: 'products', item_type: 'trade', status: 0, image_url: 'mouse.jpg')


Listing.create!(name: 'Public speaking', description: 'I can prepare 2 speeches for 2 different events in 2 weeks!', user: user3, category_id: 'skills', item_type: 'no-trade', status: 0, image_url: 'public-speaking.jpg')
Listing.create!(name: 'Badminton Racquet', description: 'A pair of racquet I used to play a lot with before I started to code', user: user3, price: 120, category_id: 'products', item_type: 'trade', status: 0, image_url: 'badminton-racket.jpg')
Listing.create!(name: 'Typing', description: 'Faster than Nisal!', user: user3, category_id: 'skills', item_type: 'trade', status: 0, image_url: 'typing.jpg')
Listing.create!(name: 'Bike', description: 'Time to start taking the tram!', user: user3, price: 120, category_id: 'products', item_type: 'trade', status: 0, image_url: 'bike.jpg')


Listing.create!(name: 'Cooking', description: 'An art for many but few good ones', user: user4, category_id: 'skills', item_type: 'no-trade', status: 0, image_url: 'cooking.jpg')
Listing.create!(name: 'Lg g3', description: 'Awesome battery, never turn off suddenly. That\'s why I sell it!', user: user4, price: 200, category_id: 'products', item_type: 'trade', status: 0, image_url: 'lg-g3.jpg')
Listing.create!(name: 'Babysit', description: 'Mary Poppins with a wooden spoon!', user: user4, category_id: 'skills', item_type: 'trade', status: 0, image_url: 'babysitter.jpg')
Listing.create!(name: 'Japanese Knife', description: 'Sharp as always!', user: user4, price: 200, category_id: 'products', item_type: 'trade', status: 0, image_url: 'japanese-knife.jpg')

Listing.create!(name: 'Archery', description: 'To hit my targets better!', user: user1, category_id: 'skills', status: 1, image_url: 'archery.png')
Listing.create!(name: 'Laptop Stickers', description: 'Like real programmers have', user: user1, category_id: 'products', status: 1, image_url: 'stick.jpg')
Listing.create!(name: 'Mouse techniques', description: 'Just to confirm my opinion that mice are useless!', user: user2, category_id: 'skills', status: 1, image_url: 'mousetech.jpg')
Listing.create!(name: 'Organic coffee cup', description: 'For my trips to 7/11', user: user2, category_id: 'products', status: 1, image_url: 'coffee.jpg')
Listing.create!(name: 'Soccer', description: 'Otherwise I can only play badmington!', user: user3, category_id: 'skills', status: 1, image_url: 'soccer.jpg')
Listing.create!(name: 'Soccer ball', description: 'So I can practice my new acquired skill!', user: user3, category_id: 'products', status: 1, image_url: 'ball.jpg')
Listing.create!(name: 'Acting', description: 'Really need it for public speaking!', user: user4, category_id: 'skills', status: 1, image_url: 'acting.jpg')
Listing.create!(name: 'Mac', description: 'Just if it\'s really cheap, \'cause it\'s not worth it!', user: user4, price: 200, category_id: 'products', status: 1, image_url: 'mac.jpg')

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
