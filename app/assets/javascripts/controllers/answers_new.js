App.AnswersNewController = Ember.Controller.extend({
  actions: {
    createAnswer: function(params) {
      var self = this;
      var answer = this.store.createRecord('answer', {
        content: this.get('fields.content'),
        question: this.store.find('question', params.question_id)
      }
      answer.save().then(function() {
        self.transitionToRoute('answers.index');
      });
    }
  }
});
