# coding: utf-8
version = File.read(File.expand_path('../../DROPPER_VERSION', __FILE__)).strip

Gem::Specification.new do |spec|
  spec.name          = "droppper-cmd"
  spec.version       = version
  spec.authors       = ["Cristian Bica"]
  spec.email         = ["cristian.bica@gmail.com"]
  spec.summary       = %q{: Write a short summary. Required.}
  spec.description   = %q{: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['README.md', 'LICENSE.txt', 'lib/**/*', 'bin/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "gli", ">= 2.0"
  spec.add_dependency "droppper-core", version

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
