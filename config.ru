use Rack::Static,
  :urls => ["/images", "/js", "/css", "/webfont", "/apple-touch-icon.png"],
  :root => "public"


map "/" do
run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY),
  ]
}
end

map "/experiment1/" do
run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/experiment1.html', File::RDONLY),
  ]
}
end

map "/homepage/" do
run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/homepage.html', File::RDONLY),
  ]
}
end