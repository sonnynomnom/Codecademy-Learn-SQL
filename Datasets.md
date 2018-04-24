# Codecademy - [Learn SQL](https://www.codecademy.com/learn/learn-sql)

### Final Projects

**Kickstarter** (press@kickstarter.com)

- Andrew Nicols, Senior Data Analyst (anicols@kickstarter.com)

**Warby Parker** Final Project (styles & pricing, customer & purchases)
 
- Maddie Tierney (maddie.tierney@warbyparker.com)
	EA to the CTO
- Ryan Tuck, Sofware Engineer, Data Engineering Team (ryan.tuck@warbyparker.com)
  - Runs their internal SQL course 
  
**Twitch** Final Project (Games) 

- Zach is sending email

**Coinbase** 

- Zach send out an email

**HackerNews** (hn@ycombinator.com)

- Scott Bell, Moderator Software (scott@ycombinator.com)
  - "We’ve been a little swamped."
  - It’s fine to use the HR logo as long as it’s clear that it’s not an official YC or HN project. It’s not that we mind being associated, we just can’t handle any extra support emails! ;)


**Magic Leap** (VR apps)

- Ye Lu, Strategic Finance Manager (lye@magicleap.com)
  - (~3 years and college friend)
  - Marketing is interested but wants Codecademy user data

**Twitch** Final Project (Games) 

- Zach is sending email

**Coinbase** 

- Zach send out an email

**Buffer** 

- Hailley Giffis, Public Relations Manager (hailley@bufferapp.com)
- Michael Erasmus, Data Lead (michael@buffer.com)

**BuzzFeed**

- Headlines Queries/Aggregates Project
  - Eugene forward email

**The Met** 				#analyst

**Meetup**

- (Sonny/Catherine) 	#business

**Airbnb**

- (Catherine) (contact.press@airbnb.com)

- Wall Street Journal (headlines)
- The New York Times (headlines)
- Spotify
- Netflix
- The New Yorker

NY-Based Companies

- **Venmo** (press@venmo.com)
- **OkCupid** (press@okcupid.com)
- Seamless
- New York Post
- FreshDirect
- Etsy
- Squarespace
- Compass
- Justworks
- Vimeo
- opendata.cityofnewyork.us

Headlines Project
- **TechCrunch** (advertise@techcrunch.com, joey@techcrunch.com)
- **Hacker News** (hn@ycombinator.com)
- **Reddit** (licensing@reddit.com, press@reddit.com)
- **The New Yorker** (mediarequests@newyorker.com)

---

**Sample Email**

Dear Coinbase,

My name is Sonny, and I develop curriculum for Codecademy, the best place for folks to learn to code and upskill their career.

We are currently building an introductory course on database usage, focusing on the language SQL. One of the main reasons that we have 45+ million users, is that learners know we offer courses that are relevant to their work. We think that using datasets from real companies like Coinbase will make this course more powerful and help our students achieve their goals.

🏅 **Ask:** We'd like to collaborate with you and your data team to incorporate some small (no more than 2000 rows) anonymized, non-confidential data into this course. For example, some tables of ledger/transaction data or even Bitcoin/Ethereum value data? Something to perform basic queries and aggregates on. If you would like this to be a final project, then maybe even joins on multiple tables.

If a dataset is too high-lift, we'd love to include a video of someone from your company discussing how they use SQL in their work. This would help our students see the value of what they're learning.

**By sharing data or video with us:**

We would cite Coinbase. Your feature would live on our evergreen course content plus our paid Intensive landing page that we feature to our 45+ million users.
Tweet/Blog about the collaboration to our 500k Twitter and 650k Facebook and send an email to our full email list at the beginning of May.
Open up future partnerships in our upcoming Blockchain and Machine Learning courses.
Most importantly, you'll be helping tens of millions of eager learners develop job-ready skills and build a better tomorrow.

**Next step: I will be the point of contact and I would love to answer questions from your data/marketing team and even brainstorm together to create a compelling next level SQL project.

Looking forward to hearing back,

Sonny Li

Curriculum Developer
Codecademy

575 Broadway, New York, NY | (330) 622-2307




# Warby Parker 👓

```sql

CREATE TABLE customers(id INTEGER, first TEXT, last TEXT);


INSERT INTO customers(id, first, last, review, price, health) VALUES ('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Pocha 32', 'Midtown', 'Korean', 4.0, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Roberta''s', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');

INSERT INTO nomnom(name, neighborhood, cuisine, review, price, health) VALUES ('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A');
