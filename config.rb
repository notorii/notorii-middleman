# Reload the browser automatically whenever files change
activate :livereload

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Use pretty URLs (directory indexes)
activate :directory_indexes

# Build-specific configuration
configure :build do

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Generate favicon files in various sizes from a base image
  activate :favicon_maker, :icons => {
    "favicon.png" => [
      { icon: "apple-touch-icon-152x152-precomposed.png" },
      { icon: "apple-touch-icon-114x114-precomposed.png" },
      { icon: "apple-touch-icon-72x72-precomposed.png" },
      { icon: "favicon.png", size: "16x16" },
      { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
      { icon: "mstile-144x144", format: "png" },
    ]
  }

end

# Configure middleman-deploy
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
end

