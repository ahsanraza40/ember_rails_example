EmberRailsExample.BooksController = Ember.ArrayController.extend
  createBook: ->
    title = this.get('newTitle')
    return unless (title.trim())
    book = EmberRailsExample.Book.createRecord({
      title: title
    })
    this.set('newTitle', '')
    book.save()

EmberRailsExample.BookController = Ember.ObjectController.extend
  isEditing: false
  removeBook: ->
    book = this.get('model')
    book.deleteRecord()
    book.save()

  editBook: ->
    this.set('isEditing', true)

  acceptChanges: ->
    this.set('isEditing', false)
    this.get('model').save()
