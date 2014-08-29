var attr = DS.attr;

App.User = DS.Model.extend({
  github_username: attr('string'),

  questions: DS.hasMany('question'),
  answers: DS.hasMany('answer')
});
