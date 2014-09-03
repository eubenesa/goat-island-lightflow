App.AnswersNewController = Ember.Controller.extend({
  actions: {
    createAnswer: function() {
      var self = this;

      var answer = this.store.createRecord('answer', function(params) {
        content: this.get('fields.content'),
        question_id: this.modelFor('question').get('question_id')
      });

      answer.save().then(function() {
        self.transitionToRoute('answers.index');
      });
    }
  }
});
