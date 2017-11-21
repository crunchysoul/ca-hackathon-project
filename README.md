# Coder Academy Hackathon Project: Project Flotsy
Heroku url: https://intense-ocean-25535.herokuapp.com/

## Team Members
This was a group project between
- Josh Chen
- Glenn Dimaliwat
- Alessio Palumbo
- John Voon

## ERD

![ERD](/app/assets/images/erd.png "ERD")

## Wireframes

![Wireframes](/app/assets/images/wireframes.png "Wireframes")

## Trello Board with our Initial Ideas, User Stories and Team Workflow

![Trello Board](/app/assets/images/trello-board.png "Trello Board")

## What is _Flotsy_? 
### __A social platform where people are connected with other individauls through:__

1. ___attraction___
2. ___diverse and common interests___
3. ___supply and demand (both material and psychological)___

### __A virtual profile for individuals, where users can upload and list items. Each profile is divided into two parts:__
- ___Owned___: Possessions owned by a user, including tangible(clothes, gadgets, cars, etc.) and intangible(travel, experiences, interesting events, skills, qualifications, etc.)
- ___Wants___: Personal wishlist for everything a user wants, including tangible goods (e.g. a
  particular bike, a special collectible postage stamp you always wanted
  since a child) and intangible (e.g. learning a new skill like diving, Spanish,
  playing the banjo or new experience such as exploring the amazing Australian outback while
  living in a 4WD camper, a relationship, etc.) 

## Philosophy of _Flotsy_:
* Life is precious
* Celebrate and respect the uniqueness and value of individuals
* Life should not be defined by rules and norms
* Objectify belongings and desire
* Honesty to self and others.
* Mutual support
* Resources belongs to all
* Open mind to all
* Sharing is caring
* Unity
* >"Happiness is only real when shared"

## Why:
* We believe individuals want to be seen for who they really are and individuals
  have the power to create that image to be seen by others.
* We think the profiles that current social media solutions allow people to create do not capture the essence of individuals but is a platform for them to share status and news updates.
* We think social media should help people connect, grow, and complement each others' needs and desires.

## User Scenario 1:
* Ann loves fashion. Flotsy is the reflection on her taste where she uploads her clothes, shoes and accessories matching her style.
* Ann has a skill of picking the trendiest items and is really good at providing advice for anyone who wants to look their best. Flotsy allows Ann's talent to be discovered by other people.
* Ann also cares about the environment. She wants to be more active in volunteering in environmental areas, but does not have the experience, and is a little bit shy. She lists this in her _Wants_ list to see if anyone might have a similar interest or experience in this area.
* Ann always think mathematics is sort of like black magic and has not studied any mathematics since graduation of high school. She wants to expand her horizons and domain of her knowledge, but is not fully committed to a degree or boring online courses. She prefers to have a mathematics wizard who can casually chat with her about mathematics, so she lists "Wishes to learn more about math" as a want.

## User Scenario 2:
  * Tom loves technology. He not only owns all the newest gadgets on the market, but also has a nice collection of all the game consoles. He really wants to let more people to know this, so he list all the gadgets he owns.
  * Tom has a PhD in Mathematics and is currently working in Google. He is very proud of himself, so he lists his knowledge.
  * Tom is also an environmental activist and has been to many Greenpeace and Sea shepherd events. He loves these experiences a lot.
  * Tom, on the other hand, always want to upgrade his wardrobe, but does not want to hire a professional as this might be slightly awkward, so he lists "May need help with wardrobe".
  * Tom hangs out with the same people on a daily basis and would love to make some new friends. He prefers to meet people individually who have different interests.

## Flotsy provides all the values that both users are seeking for:
  * Ann and Tom used _Flotsy_ to express themselves to others by listing things they care about and desire. We are satisfying their needs on a psychological level.
  * Ann and Tom used _Flotsy_ to connect to each other by areas they complete each other, first they chat with each other through _Flotsy_'s messaging system, just like the scene from "You've got mail"
  * After a while, they felt comfortable to have a coffee together, then they met each other and had a wonderful chat in a lovely cafe. Ann learnt a lot from Tom about Mathematics. She is now fascinated by the beauty of Mathematics and is currently reading the book of _GEB_ and really loves it. The book is also from another _Flotsy_ user, which is anohter great story for another day.
  * Tom also told of all the interesting facts about Gameboys and how technologies have evolved for the past years. He feels really greate that spread he's love for teachnoloies to others.
  * Ann heard all the experiences about environmental activities from Tom, she was not only amazed by those stories, but also learnt how to become a activist. She is now more confident about this, and has made a new connection in this areas.
  * Ann helped Tom to restyle his wardrobe. Now Tom not only looks smart but is also extremely attractive. Tom is happy because of this. Ann is happy because of the satisfication of making people care about fashion. She helped others and built the image she always want to be seen as.
  * This is why _Flotsy_ is a greate platform!

## Motivations for the project

We did this not only to pass the assessment requirements but as a team, we really wanted to get others excited about the potential of this idea. 

## Future Plans

- Allowing users to create group accounts to connect with others in the community, e.g. couples, etc.
- Improve responsiveness for mobile devices
- Incorporate likes and followers functionality
- Sort listings by likes
- Comments

## Challenges

It was a real challenge to scoping our project to an achievable MVP that could be completed within the time constraints. To tackle this, we had to trim down features such as likes and followers and focus on the core features of our application that we wanted to convey in our presentation/pitch.  

We also attempted to divide the work between "back-end" developers and "front-end" developers and had a member of our team develop the front-end separate from the back-end. We therefore struggled with the challenge of syncing up this work and the lack of familiarity with integrating a static front-end with the back-end. This required frequent communication via Slack to make sure we were on the same page as to what others were doing at any given time. 

It also took us a while to implement image uploading and having a fallback. Essentially, we wanted to also be able to seed our database with images quickly instead of uploading images manually. We did this by creating another column in our Profiles and Listings table for the fallback image. We then seeded the database with the image filename, e.g. "badminton-racket.jpg" and used the `image_url` helper method to display the URL to the image.  

Learning to use Git as a team was initially challenging. With the help of frequent communication to see if anyone had recently pushed changes, we were able to implement major features in separate branches and then merge them to the master branch at appropriate times.


