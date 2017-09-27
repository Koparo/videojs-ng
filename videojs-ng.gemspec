# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "videojs/ng/version"

Gem::Specification.new do |spec|
  spec.name          = "videojs-ng"
  spec.version       = Videojs::Ng::VERSION
  spec.authors       = ["Adam Wolk"]
  spec.email         = ["adam.wolk@koparo.com"]

  spec.summary       = %q{video.js javascript bundle}
  spec.description   = %q{Video.js is an open source library for working with video on the web, also known as an HTML video player.}
  spec.homepage      = "https://github.com/koparo/videojs-ng"
  spec.license       = 'ISC'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
