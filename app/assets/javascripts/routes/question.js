App.QuestionRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('question', params.id);
  }
});
