# frozen_string_literal: true

require_relative "lib/narou/version"

Gem::Specification.new do |spec|
  spec.name = "narou"
  spec.version = Narou::VERSION
  spec.authors = ["instantjohn1"]
  spec.email = ["sensiblejohn@hotmail.com"]

  spec.summary = "Data extractor of \"Syousetsuka ni narou\""
  spec.description = "extract data from https://syosetu.com/"
  spec.homepage = "https://github.com/instantjohn/narou"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage 
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
