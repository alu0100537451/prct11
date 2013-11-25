# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SparseMatrixProject/version'

Gem::Specification.new do |spec|
  spec.name          = "SparseMatrixProject"
  spec.version       = SparseMatrixProject::VERSION
  spec.authors       = ["Jacobo Saavedra Valdes", "Aaron Jose Vera Cerdeña]
  spec.email         = ["alu0100658682@ull.edu.es", "alu0100537451@ull.edu.es"]
  spec.description   = %q{Gema para realizar suma y resta entre matrices densas y dispersas}
  spec.summary       = %q{Matrices dispersas y densas}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
