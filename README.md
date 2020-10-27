# Simple Airbnb
![product_image](https://user-images.githubusercontent.com/66708411/97255716-98836700-1854-11eb-8cd2-216a4017883d.png)
Heroku deplpyment https://test-airbnb-one.herokuapp.com/

## Table of contents
* [Introduction](#introduction)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Requirements Achieved](#requirmentsacheved)
* [Inspiration](#inspiration)

## Introduction
Cloud-based backend service that emulates functionality similar to 'airbnb' booking feature. Has a simple and basic frontend implementation to show the functionality.

## Screen shot
![product_image](https://user-images.githubusercontent.com/66708411/97256279-fb293280-1855-11eb-8f08-c5431201191a.png)

## Technologies
* Ruby on rails 6.0.3
* Ruby 2.6.6
* PostgreSQL
* Cloudinaly

## Setup
Describe how to install / setup your local environement / add link to demo version.

## Features
### 7 models and controller
![trable_design](https://user-images.githubusercontent.com/66708411/97255639-67a33200-1854-11eb-869f-0c0ceb0d54b6.png)

## functions
> As render
* Post accommodation
* Edit accommodation
* Delete accommodation
* Get notification when new comment or favorit is added

> As borrower
* Search accommodation (Ransack）
* Create booking
* Edit booking
* Delete booking
* Add accommodation as 'favourite'

> As both render and borrower
* Signup, Login, Logout,
* Post comment on accommodation show page

## Requirements Achieved
> technologies
* Ruby on rails for backend ⚪︎
* Vue.js for front end. ×

> functions
* User registration, login, search, book, and log out ⚪︎
* Registering rooms as render (Create/ Delete / Edit) ⚪︎
* Message function between lender and borrower ⚪︎
* Setting (property type, price, date) ⚪︎
* TDD or BDD ×

> optional functions (except requirment)
* Add as Favourite ⚪︎
* Notification when accommodation added favourite or got message ⚪︎

### Things I would like to do
* Create the map function for user can see the location on the map.
* Improve frontend to Vue.js 
* Add test code.
* After finishing I realized 'notification' controller was not efficient enough(notifications are not disappear from index page after user saw it.) I would go back and fix it.

## Inspiration
Project based on https://www.airbnb.jp/s/homes