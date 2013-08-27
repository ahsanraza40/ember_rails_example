# for more details see: http://emberjs.com/guides/models/defining-models/

EmberRailsExample.Todo = DS.Model.extend
  content: DS.attr 'string'
  closed: DS.attr 'boolean'
