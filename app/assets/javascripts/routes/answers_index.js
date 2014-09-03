App.AnswersIndexRoute = Ember.Route.extend({
  model: function() {
    return this.modelFor('question').get('answers');
  }
});
