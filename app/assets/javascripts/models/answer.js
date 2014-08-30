App.Answer = DS.Model.extend({
  content: DS.attr('string'),
  // upvotes
  updated_at: DS.attr('date'),

  user: DS.belongsTo('user', { async: true }),
  question: DS.belongsTo('question', { async: true })
});
