App.Question = DS.Model.extend({
  subject: DS.attr('string'),
  content: DS.attr('string'),
  category: DS.attr('string'),
  // upvotes
  updated_at: DS.attr('date'),

  user: DS.belongsTo('user', { async: true })
  // answers: DS.hasMany('answer')
});
