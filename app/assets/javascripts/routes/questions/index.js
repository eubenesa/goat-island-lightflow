App.QuestionsIndexRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('question');
  }
});
