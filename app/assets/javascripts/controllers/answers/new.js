App.AnswersNewController = Ember.ObjectController.extend({
  needs: 'question',

  text: null,

  actions: {
    createAnswer: function() {
      var self = this;

      var question = this.get('controllers.question.content');

      var answer = this.store.createRecord('answer', {
        question: question,
        content: this.get('text')
      });

      answer.save().then(function(answer) {
        question.get('answers').pushObject(answer);
      });

      self.transitionToRoute('question.index');
    }
  }
});
