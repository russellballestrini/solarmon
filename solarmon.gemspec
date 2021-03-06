# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solarmon/version'

Gem::Specification.new do |spec|
  spec.name          = "solarmon"
  spec.version       = SolarMon::VERSION
  spec.authors       = ["Charles Hooper"]
  spec.email         = ["chooper@plumata.com"]

  spec.summary       = %q{Fetch data from SolarEdge monitoring}
  spec.description   = %q{Fetch data from SolarEdge monitoring}
  spec.homepage      = "http://www.charleshooper.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "excon", "~> 0.54"
  spec.add_dependency "pg", "~> 0.18"
  spec.add_dependency "pry", "~> 0.10"
  spec.add_dependency "sequel", "~> 4.36"
  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "thin", "~> 1.7"
  spec.add_dependency "tzinfo", "~> 1.2"
  spec.add_dependency "bundler", "~> 1.12"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_development_dependency "minitest", "~> 5.0"
end
