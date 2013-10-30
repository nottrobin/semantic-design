require 'rack'
require 'rack/contrib/try_static'

# Serve files
# ---
use Rack::TryStatic,
    :root         => '_site',       # Serve files from _site folder
    :urls         => %w[/],         # match all requests
    :index        => 'index.html',  # index.html is index (/)
    :try          => ['.html'],     # try adding .html
    :header_rules => [
        [['html'], {'Content-Type' => 'text/html; charset=utf-8'}], # Encoding for HTML
        [['css'], {'Content-Type' => 'text/css; charset=utf-8'}],   # Encoding for CSS
        [['js'], {'Content-Type' => 'text/javascript; charset=utf-8'}] # Encoding for JS
    ]

run lambda { |env|
    request = Rack::Request.new(env)
    headers = { 'Content-Type' => 'text/html' }
}
