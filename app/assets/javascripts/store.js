DS.RESTAdapter.reopen({});

App.ApplicationStore = DS.Store.extend({});

// Override the default adapter with the `DS.ActiveModelAdapter` which
// is built to work nicely with the ActiveModel::Serializers gem.
App.ApplicationAdapter = DS.ActiveModelAdapter.extend({});

App.AnswerAdapter = DS.ActiveModelAdapter.extend({
  buildURL: function(type, id, record) {
    return '/questions/' + record.get('question.id') + '/answers';
  }
});
