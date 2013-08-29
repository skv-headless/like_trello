# for more details see: http://emberjs.com/guides/views/

LikeTrello.TasksView = Ember.View.extend
  templateName: 'tasks'

  didInsertElement: ()->
    task_list = $('.task-wrapper ul')
    task_list.sortable({
      connectWith: "ul",
      receive: (event, ui)->
        new_state = ui.item.parent().attr('data-state')
        id = ui.item.find('a').attr('href').split('/').slice(-1)[0]
        task = LikeTrello.Task.find(id)
        task.set('state', new_state)
        task.store.commit()
    });
    task_list.disableSelection();
