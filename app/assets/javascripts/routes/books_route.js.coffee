EmberRailsExample.BooksRoute = Ember.Route.extend({
  model: ->
    EmberRailsExample.Book.find()
})
