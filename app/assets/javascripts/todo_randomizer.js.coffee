window.TodoRandomizer =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new TodoRandomizer.Routers.Todos()
    Backbone.history.start()

$(document).ready ->
  TodoRandomizer.initialize()
