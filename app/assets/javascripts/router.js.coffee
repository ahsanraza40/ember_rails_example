# For more information see: http://emberjs.com/guides/routing/

EmberRailsExample.Router.map ()->
  @resource('books', ->
    @resource('book', {path: ':book_id'})
  )
  @resource('todos', ->
    @resource('todo', {path: ':todo_id'})
  )

