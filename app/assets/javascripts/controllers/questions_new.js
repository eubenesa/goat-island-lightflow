App.QuestionsNewController = Ember.Controller.extend({
  actions: {
    createQuestion: function() {
      var self = this;
      var question = this.store.createRecord('question', this.get('fields'));
      question.save().then(function() {
        self.transitionToRoute('questions');
      });
    }
  }
});
