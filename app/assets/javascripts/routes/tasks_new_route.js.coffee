# For more information see: http://emberjs.com/guides/routing/

LikeTrello.TasksNewRoute = Ember.Route.extend({
  model: ->
    LikeTrello.Task.createRecord(title: '', body: "", state: 'backlog')

  renderTemplate: ()->
    @render({ outlet: 'popup' })

  deactivate: ()->
    $('.window-overlay').hide();
})
