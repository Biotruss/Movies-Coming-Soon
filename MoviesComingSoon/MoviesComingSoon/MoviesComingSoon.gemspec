lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "movies_coming_soon/version"

Gem::Specification.new do |spec|
  spec.name          = "MoviesComingSoon"
  spec.version       = MoviesComingSoon::VERSION
  spec.authors       = ["Craig Messi"]
  spec.email         = ["craig.messi@gmail.com"]

  spec.summary       = %q{"must do later"}
  spec.description   = %q{"must do later"}
  spec.homepage      = "https://github.com/Biotruss/Movies-Coming-Soon"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/Biotruss/Movies-Coming-Soon"
  spec.metadata["source_code_uri"] = "https://github.com/Biotruss/Movies-Coming-Soon"
  spec.metadata["changelog_uri"] = "https://github.com/Biotruss/Movies-Coming-Soon"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
