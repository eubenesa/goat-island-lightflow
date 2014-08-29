var attr = DS.attr;

App.Answer = DS.Model.extend({
  content: attr('string'),
  // upvotes
  updated_at: attr('date'),

  user: DS.belongsTo('user'),
  question: DS.belongsTo('question')
});
