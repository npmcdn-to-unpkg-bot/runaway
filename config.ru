use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/dashboard.html', File::RDONLY),
    File.open('public/index.html', File::RDONLY),
    File.open('public/login.html', File::RDONLY),
    File.open('public/profile.html', File::RDONLY),
    File.open('public/register.html', File::RDONLY),
    File.open('public/track.html', File::RDONLY)
  ]
}