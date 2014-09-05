App.QuestionIndexRoute = Ember.Route.extend({
  model: function () {
    return this.modelFor('question');
  }
});
