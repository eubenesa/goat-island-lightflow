var attr = DS.attr;

App.Question = DS.Model.extend({
  subject: attr('string'),
  content: attr('string'),
  category: attr('string'),
  // upvotes
  updated_at: attr('date'),

  user: DS.belongsTo('user'),
  answers: DS.hasMany('answer')
});
