AwesomeShareButtons.configure do |config|
  config.allow_sites = %w(twitter facebook google_plus delicious tumblr pinterest)
  config.site_to_icon = {
      'google_plus' => 'google-plus-square',
      'email' => 'envelope-square',
      'facebook' => 'facebook-square',
      'twitter' => 'twitter-square',
      'tumblr' => 'tumblr-square',
      'pinterest' => 'pinterest-square',
      'delicious' => 'delicious'
  }
end
