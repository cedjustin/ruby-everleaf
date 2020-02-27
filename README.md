# README

## Model names
> Name : Task
> Name : User
> Name : Labels

## Tables
>User > Columns :
                 > Id : Integer
                 > Name : String
>Task > Columns :
                 > Id : Integer
                 > User_id : Bigint
                 > Label_name : String
                 > Start_date : Datetime
                 > End_date : Datetime
                 > Status : String
>Labels > Columns:
                 > Id : Integer
                 > Label_name : String

## Schema 
User
-----
Id   | Name     |
-----|----------|
  1  | John Doe |
-----------------

Task
------
id  | user_id |   label_name          | start_date  | end_date   |status    |
----|---------|-----------------------|-------------|------------|----------|
 1  |  1      | Develop updating feature  | 1/1/2020    |10/1/2020   | pending  |
-----------------------------------------------------------------------------

Labels
-------
id  | label_name   |
----|--------------|
  1 | Development  |
--------------------

## How to deploy on heroku

1. Login
 - To create an app on heroku you need to login first by using the command below
 ```heroku login ```
 - After follow the instructions


2. To create an app on heroku use the command below
  ```heroku create```


3. To push the codes on heroku use the command below and make sure the branch is master
  ```git push heroku master ```


4. To perform migrations on heroku use the command below
  ```heroku run rails db:migrate```