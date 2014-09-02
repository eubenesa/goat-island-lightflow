App.Question = DS.Model.extend({
  subject: DS.attr('string'),
  content: DS.attr('string'),
  // category: DS.attr('string'),
  // upvotes: DS.attr(),
  updatedAt: DS.attr(),

  user: DS.belongsTo('user'),
  answers: DS.hasMany('answer'),

  // upvotesLength: function() {
  //   return this.get('upvotes').length;
  // }.property('upvotes'),

  formattedUpdatedAt: function() {
    return moment(this.get('updatedAt')).fromNow();
  }.property('updatedAt')
});
