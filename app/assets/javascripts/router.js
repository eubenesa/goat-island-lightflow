// For more information see: http://emberjs.com/guides/routing/
App.Router.reopen({
  rootURL: '/',
  location: 'auto'
});

App.Router.map(function() {
  this.resource('questions', { path: '/' }, function() {
    this.route('new');

    this.resource('question', { path: '/question/:question_id' }, function() {
      this.resource('answers', function() {
        this.route('new');
      });
    });
  });
});
