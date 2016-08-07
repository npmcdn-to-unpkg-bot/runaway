use Rack::Static,
  :urls => ["/images", "/js", "/css", "/pages"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/pages/index.html', File::RDONLY)
  ]
}