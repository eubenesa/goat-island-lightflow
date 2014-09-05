// For more information see: http://emberjs.com/guides/routing/
App.Router.reopen({
  rootURL: '/',
  location: 'auto'
});

App.Router.map(function () {
  this.resource('questions', function () {
    this.route('new');
  });

  this.resource('question', { path: '/questions/:question_id' }, function () {
    this.resource('answers', function () {
      this.route('new');
    });
  });
});
