class TodoRandomizer.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  events:
    'submit #new_todo': 'createEntry'
    'click #draw': 'drawPriority'

  initialize: ->
    @collection.on('reset', @render)
    @collection.on('add', @appendEntry)
    @collection.on('remove', @render)

  render: =>
    $(@el).html(@template(todo: @model))
    @collection.each(@appendEntry)
    @

  appendEntry: (todo) =>
    view = new TodoRandomizer.Views.Todo(model: todo)
    $('#todos').append(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    attributes = task: $('#new_todo_name').val()
    @collection.create attributes,
      wait: true
      success: -> $('#new_todo')[0].reset()
      error: @handleError

  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

  drawPriority: (event) ->
    event.preventDefault()
    @collection.drawPriority()