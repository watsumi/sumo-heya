require_relative 'lib/sumo_heya/version'

Gem::Specification.new do |spec|
  spec.name          = "sumo_heya"
  spec.version       = "0.1.1"
  spec.authors       = ["watsumi"]
  spec.email         = ["w.utsumi2@gmail.com"]

  spec.summary       = %q{I will write this summary after I finish creating this gem.}
  spec.description   = %q{I will write this description after I finish creating this gem.}
  spec.homepage      = "https://github.com/watsumi"

  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
