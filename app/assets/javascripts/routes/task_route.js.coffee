# For more information see: http://emberjs.com/guides/routing/

LikeTrello.TaskRoute = Ember.Route.extend({
  renderTemplate: ()->
    @render({ outlet: 'popup' })
    $('.window-overlay').show();

  model: (params)->
    LikeTrello.Task.find(params.task_id)

  deactivate: ()->
    $('.window-overlay').hide();
})
