EmberRailsExample.TodosController = Ember.ArrayController.extend
  createTodo: ->
    content = this.get('newContent')
    return unless (content.trim())
    todo = EmberRailsExample.Todo.createRecord({
      content: content
    })
    this.set('newContent', '')
    todo.save()

EmberRailsExample.TodoController = Ember.ObjectController.extend
  removeTodo: ->
    todo = this.get('model')
    todo.deleteRecord()
    todo.save()
