EmberRailsExample.TodosController = Ember.ArrayController.extend
  createTodo: ->
    content = this.get('newContent')
    return unless (content.trim())
    todo = EmberRailsExample.Todo.createRecord({
      content: content
    })
    this.set('newContent', '')
    todo.save()
