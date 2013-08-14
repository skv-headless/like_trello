# for more details see: http://emberjs.com/guides/models/defining-models/

LikeTrello.Task = DS.Model.extend
  title: DS.attr 'string'
  body: DS.attr 'string'
  state: DS.attr 'string'
