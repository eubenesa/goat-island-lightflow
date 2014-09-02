App.User = DS.Model.extend({
  githubUsername: DS.attr('string'),

  questions: DS.hasMany('question')
  // answers: DS.hasMany('answer')
});
