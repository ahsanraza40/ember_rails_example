EmberRailsExample.TodosRoute = Ember.Route.extend({
  model: ->
    EmberRailsExample.Todo.find()
})
