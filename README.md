# Phase 3 Project Horror Rater -- Backend API Simplified

### A trimmed down version of the original Horror Rater API


## Description


The slimmer API for a horror movie database. Among that list, movies can be clicked to navigate to a page that includes more details for each movie, including director, release date, and sub-genre, and also including the reviews that hold comments and ratings, both on overall quality of the film and the scariness factor.  This repo includes the database migrations, models, and controllers for both parts (movies and reviews), along with necessary gem files and configurations.


## Introduction


This project's focus is **Ruby** and OOP in which I **built this Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which is used
by a separate **React frontend** that interacts with the database via the API. View the frontend here:


https://github.com/jacobsaltzman/phase-3-react-frontend-simplified


## Usage


For this project, the back-end does the following:


[✔️] Uses Active Record to interact with an SQL database created with the create_movies and create_reviews migrations.


[✔️] Uses two models (movie.rb and review,rb) with a one-to-many relationship established between them.


[✔️] Uses API routes in Sinatra to add touchpoints that include:


  - create and read actions for the **movie** model:


    --*Create* a new movie

    --*Read* a list of movies


  - full CRUD capability for the **review** model:


    --*Create* a new review of a movie

    --*Read* a list of reviews

    --*Update* an individual review

    --*Delete* a review


[✔️] Builds a separate React frontend application that interacts with the API to
  perform these CRUD actions.


[✔️] Uses good OO design patterns, including having separate classes for each of
  model.


[✔️] Has routes that follow RESTful conventions.


## Getting Started


### Backend Setup


This repository has all the starter code needed to get a Sinatra backend up and
running. Run `bundle install` to install the gems.


If not present, run `rake db:migrate` to run the migrations and get the necessary **schema**. And you can also run `rake db:seed` if you wish to use the **seed data**.


You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).


### Frontend Setup


See the Frontend repo for directions.


## Further explanations


- This project is intended to focus more on the backend than the frontend. It mainly focuses on working with Active Record and performing CRUD actions with that API, and is a simplified version of the larger Phase-3 project.


- Future additions would be to include user login authentication, houses and awards models, and more functionality.


