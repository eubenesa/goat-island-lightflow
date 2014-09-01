// For more information see: http://emberjs.com/guides/routing/
App.Router.reopen({
  rootURL: '/',
  location: 'auto'
})

App.Router.map(function() {
  this.resource('questions', { path: '/' }, function() {
    this.route('new');
  });
});
