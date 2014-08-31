App.Answer = DS.Model.extend({
  content: DS.attr('string'),
  upvotes: DS.attr(),
  updated_at: DS.attr(),

  user: DS.belongsTo('user', { async: true }),
  question: DS.belongsTo('question', { async: true })
});
