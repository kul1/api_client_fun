
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api_client_fun/version"

Gem::Specification.new do |spec|
  spec.name          = "api_client_fun"
  spec.version       = ApiClientFun::VERSION
  spec.authors       = ["Prateep Kul"]
  spec.email         = ["1.0@kul.asia"]

  spec.summary       = %q{Starting point to create a client for an example api.}
  spec.description   = %q{Starting point to create a ciennt for an example api.}
  spec.homepage      = "https://github.com/kul1/api_client_fun"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.14.1"
  spec.test_files = Dir['spec/**/*']
  spec.add_runtime_dependency "httparty", "0.20.0"
  spec.add_development_dependency "vcr", "6.0.0"
  spec.add_development_dependency "rspec", "3.10.0"
  spec.add_development_dependency "webmock", "3.14.0"
end
