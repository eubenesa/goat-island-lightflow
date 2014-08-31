App.Question = DS.Model.extend({
  subject: DS.attr('string'),
  content: DS.attr('string'),
  category: DS.attr('string'),
  upvotes: DS.attr(),
  updated_at: DS.attr(),

  user: DS.belongsTo('user', { async: true }),
  // answers: DS.hasMany('answer'),

  upvotesLength: function() {
    return this.get('upvotes').length;
  }.property('upvotes'),

  formattedUpdatedAt: function() {
    return moment(this.get('updated_at')).fromNow();
  }.property('updated_at')
});
