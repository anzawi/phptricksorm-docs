# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "logaty-documentation"
  spec.version       = "0.1.0"
  spec.authors       = ["Mohammad Anzawi"]
  spec.email         = ["m.anzawi2013@gmail.com"]

  spec.summary       = "theme created fo my github repositories documentations"
  spec.homepage      = ""
  spec.license       = "GPL-3"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
end
