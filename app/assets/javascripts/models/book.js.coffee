# for more details see: http://emberjs.com/guides/models/defining-models/

EmberRailsExample.Book = DS.Model.extend
  title: DS.attr 'string'
  author: DS.attr 'string'
  releasedOn: DS.attr 'date'
  overImage: DS.attr 'string'
