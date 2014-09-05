App.Question = DS.Model.extend({
  subject: DS.attr('string'),
  content: DS.attr('string'),
  updatedAt: DS.attr(),

  user: DS.belongsTo('user'),
  answers: DS.hasMany('answer', {async: true}),

  formattedUpdatedAt: function() {
    return moment(this.get('updatedAt')).fromNow();
  }.property('updatedAt')
});
