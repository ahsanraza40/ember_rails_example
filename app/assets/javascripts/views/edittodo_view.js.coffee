EmberRailsExample.EditTodoView = Ember.TextField.extend
  classNames: ['edit']
  insertNewLine: ->
    this.get('controller').acceptChanges()

  focusOut: ->
    this.get('controller').acceptChanges()

  didInsertElement: ->
    this.$().focus()
