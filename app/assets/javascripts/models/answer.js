App.Answer = DS.Model.extend({
  content: DS.attr('string'),
  updatedAt: DS.attr(),

  user: DS.belongsTo('user'),
  question: DS.belongsTo('question'),

  formattedUpdatedAt: function() {
    return moment(this.get('updatedAt')).fromNow();
  }.property('updatedAt')  
});
