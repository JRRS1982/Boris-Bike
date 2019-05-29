# Project title

Boris Bikes is the week 1 afternoon project of the Makers Academy Bootcamp. 

## Motivation / Approach

This project was made to develop my Object Orientated Programming Skills, and to
practice the base skills in Ruby, including encapsulations, mocking / stubbing
and associated test driven development.

I decided to redo the project in May 2019 as I decided that it would be good
practice to repeat the earlier attempts (which were pair programmed) by myself
and to recap this project which demostrates many elements of object orientated
programming.

### Build status

As at 29th May 2019, I consider the file closed, it is a practice exercise
and having been through the majority of it I have other pressing concerns. I may
return to the project at a later date to add some more stories and provide
better test coverage / encapsulation.

### Screenshots / UML / Notes / Diagrams

A class diagram and notes were drawn on paper for the project, but nothing has
been uploaded to the project folder.

### User Stories

As a lover of bicycles,
I want a docking station to release a bike for me to ride,
so that I can get around London quicker.

As a lover of bicycles,
I want to return my bicycle to the docking station after i have finished,
so that I dont get charged for having it for too long.

As a lover of bicycles,
I dont want to be given a faulty bike from the docking station,
so that I can actually use it as intended.

As a lover of bicycles,
so that i am not charged unneccsessarily,
I dont want to be given a bike if there are none available.

As a lover of bicycles,
so that i can control the storage of bikes,
I would like docking stations to accept not more than their capacity.

As a system administrator,
so that i can plan the distribution of bikes,
I would like docking stations to have a default capacity of 20 bikes.

As a system administrator,
so that busy areas can be serviced more effectively,
I would like to specify a larger capacity of bikes when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As at 29th May 2019 all the tests are passing and I think that all user stories
have been covered, although with more time I would be able to write some better
tests.

### Problem solving - workings

The inputs will be strings, a command to the terminal requesting an action.

The output will be a bike object string, or an string error message.

## Tech / framework used

An apple macbook was used to write code using VSCode as an editor and;

* Ruby was used as the main language.
* RSpec used for testing.
* Simplecov is used for test coverage.

### Code style

Rubocop 0.65.0 was used for linting and stylying the Ruby code.

### Tests

A TDD process was used in the development of this project, please see the
attached spec files for details of the testing that was carried out.

## Installation / Running / How it works

Please find attached a gem file listing those gems for installation, use the
following to run the file:

1) This is a terminal run app, please use regular terminal commands to create
objects and play around with the code. 
2) rspec - will run the test suite.

## API Use

No API used in this project.

## Reflection / further development

I would better encapsulate the bike object, and write more user stories,
covering elements such as payment for the bike or creating a user and / or
multiple docking stations for bikes to be returned to.

## Credits / team members

No contributions are required at this time, as this is a training exercise.

This is a solo project that does not require referencing to any exteral source.
