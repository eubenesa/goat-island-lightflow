App.QuestionsNewController = Ember.Controller.extend({
  actions: {
    createQuestion: function() {
      var self = this;
      var question = this.store.createRecord('question', {
        subject: this.get('fields.subject'),
        content: this.get('fields.content')
      });
      question.save().then(function() {
        self.transitionToRoute('questions.index');
      });
    }
  }
});
