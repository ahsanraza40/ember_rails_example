# For more information see: http://emberjs.com/guides/routing/

EmberRailsExample.Router.map ()->
  @resource('todos', ->
    @resource('todo', {path: ':todo_id'})
  )

