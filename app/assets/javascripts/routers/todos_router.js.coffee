class TodoRandomizer.Routers.Todos extends Backbone.Router
  routes:
    '': 'index'
    'todos/:id': 'show'

  initialize: ->
    @collection = new TodoRandomizer.Collections.Todos()
    @collection.fetch()

  index: ->
    view = new TodoRandomizer.Views.TodosIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Alert #{id}"
