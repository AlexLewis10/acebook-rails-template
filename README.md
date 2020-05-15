
- Dependencies
- Install postgres

# GAPAGbook 

This project is part of weeks 8 and 9 of Makers Academy. The focus of the project was to practice AGILE methodologies and ceromonies, such as standups and sprint planning sessions, as well as learning Ruby on Rails along the way.

Project requirements were specified by Makers coaches who acted as the client. We were given a set of requirements at the start of the first week and the second week.

## Team Members
- [Gina Frankel](https://github.com/Gina-Frankel)
- [Alexa Kearns](https://github.com/alexakearns)
- [Phil Vigus](https://github.com/PhilipVigus)
- [Alex Lewis](https://github.com/AlexLewis10)
- [Graham Falconer](https://github.com/grahamfalconer)

## Technologies

| Purpose       | Technology     | 
| ------------- |:-------------: | 
| Framework     | Rails          |
| Language      | Ruby 2.5.0     | 
| Test framework| Rspec, Capybara|
| CI/CD         | Travis         |
| Hosting       | Heroku         |
| Databases     | postgresql     |
| Encryption    | Bcrypt         |
| Codequality   | Rubocop, SimpleCov, Rubycritic |

## User Stories

**Week 1**
```
As a user,
So that I can make posts securely,
I would like to be able to sign up with a unique username, email and password

As an signed up user,
So that I can sign in,
I would like a login page where I enter my email address and password.

As a user,
When signing in, if I enter incorrect details,
I would like to recieve a prompt to enter my details again


```
**Week 2**
```
As a user, 
So when I login I see my posts, 
I would like to be redirected to my wall

As a user, 
So that strangers cant see my posts as a security feature,  
I would like only logged in users to see posts

As a user, 
So that everything I’ve posted can appear in one place, 
I would like to have my own wall.

As a user, 
So that I have full control over my posts, 
As the owner of posts, onIy I, can update or delete them 

As a user, 
So that I can see all my friends posts in one place, 
I would like to click on a friends user handle and be directed to their wall 

As a user,  
So that I can post on my friends wall,  
I would like to be able to post on my friends wall
```


### Mockup  
![](readme_pictures/mockup.png)

### Tables 
![](readme_pictures/tables.png)

## Quickstart


## how to install and run it.
First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate
> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## How to run tests  
- rspec 
  - run `rspec`
- simplecov 
  - connected to rspec
- rubocop 
  - run `rubocop`
- rubycritic 
  - run `rubocritic`



