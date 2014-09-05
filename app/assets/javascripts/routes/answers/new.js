App.AnswersNewRoute = Ember.Route.extend({
  setupController: function(controller, model) {
    controller.set('text', null);
  }
});
