class TodoRandomizer.Collections.Todos extends Backbone.Collection
  url: '/api/todos'
  model: TodoRandomizer.Models.Todo

  drawPriority: ->
    priority = @shuffle()[0]
    priority.win() if priority
