class TodoRandomizer.Views.Todo extends Backbone.View
  template: JST['todos/todo']
  tagName: 'li'
  className: 'list-group-item'

  events:
    'click .delete': 'deleteTask'

  initialize: ->
    @model.on('change', @render, @)

  render: ->
    $(@el).html(@template(todo: @model))
    @

  deleteTask: (event) ->
    event.preventDefault()
    @model.destroy(todo: @model)