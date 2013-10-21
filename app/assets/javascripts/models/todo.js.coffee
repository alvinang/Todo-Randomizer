class TodoRandomizer.Models.Todo extends Backbone.Model

  win: ->
    @set(priority: true)
    @save()
