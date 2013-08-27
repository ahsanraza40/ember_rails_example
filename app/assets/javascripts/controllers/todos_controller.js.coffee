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
  isEditing: false
  removeTodo: ->
    todo = this.get('model')
    todo.deleteRecord()
    todo.save()

  editTodo: ->
    this.set('isEditing', true)

  acceptChanges: ->
    this.set('isEditing', false)
    this.get('model').save()
