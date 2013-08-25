# for more details see: http://emberjs.com/guides/views/

LikeTrello.TaskView = Ember.View.extend
  templateName: 'task'

  didInsertElement: ()->
    $('.window-overlay').show();
