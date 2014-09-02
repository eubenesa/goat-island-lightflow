App.User = DS.Model.extend({
  githubUsername: DS.attr('string'),

  questions: DS.hasMany('question', {async: true})
  // answers: DS.hasMany('answer', { async: true })
});
