App.User = DS.Model.extend({
  github_username: DS.attr('string'),

  // questions: DS.hasMany('question', {async: true})
  // answers: DS.hasMany('answer', { async: true })
});
