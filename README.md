## Randomize To-Do List app 

This app is a built with additional features on top of the [Raffler App](http://railscasts.com/episodes/323-backbone-on-rails-part-1) on RailsCast by Ryan Bates, Part 1 and 2.

This app is built using:
* Rails 4.0.0
* Ruby 2.0.0p247
* Backbone (using backbone on rails gem)

### Functions

* Adding to-do task
* Randomly selecting one to-do for immediate action
* Built-in timer (optional)

### Changes from RailsCast

#### Displaying Records (Part 1)

When displaying records, added reset: true as the following:
/app/assets/javascripts/routers/todos_router.js.coffee

```ruby
initialize: ->
  @collection = new TodoRandomizer.Collections.Entries()
  @collection.fetch(reset: true)
```

#### Adding data but not saving (Part 2)

In models/todo.rb, added attr_accessor
```ruby
class Todo < ActiveRecord::Base
 attr_accessible :task
end
```

and in the gemfile, added:

```ruby
gem 'protected_attributes'
```

### Methodology (non-technical)

From the book (The 4-Hour Workweek)[http://www.fourhourworkweek.com/] by Tim Ferriss & [The 7 Habits of Highly Effective People](https://www.stephencovey.com/7habits/7habits.php), staying focused is crucial. Hence, this app is created with a maximum of 5 things on your to-do list, to be completed today.

When you are running out of time, you focus entirely on finishing up your work; hence the timer. 

### Questions/Comments

Contact me on (GitHub)[https://github.com/alvinang] for questions.