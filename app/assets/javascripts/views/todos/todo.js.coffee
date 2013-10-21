class TodoRandomizer.Views.Todo extends Backbone.View
  template: JST['todos/todo']
  tagName: 'li'
  className: 'list-group-item'

  initialize: ->
    @model.on('change', @render, @)

  render: ->
    $(@el).html(@template(todo: @model))
    @