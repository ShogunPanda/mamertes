# encoding: utf-8
#
# This file is part of the mamertes gem. Copyright (C) 2012 and above Shogun <shogun_panda@me.com>.
# Licensed under the MIT license, which can be found at http://www.opensource.org/licenses/mit-license.php.
#

require "./lib/mamertes/version"

Gem::Specification.new do |gem|
  gem.name = "mamertes"
  gem.version = Mamertes::Version::STRING
  gem.authors = ["Shogun"]
  gem.email = ["shogun_panda@me.com"]
  gem.homepage = "http://github.com/ShogunPanda/mamertes"
  gem.summary = %q{Yet another command line manager.}
  gem.description = %q{Yet another command line manager.}

  gem.rubyforge_project = "mamertes"
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency("bovem", "~> 1.2.0")

  gem.add_development_dependency("rspec", "~> 2.11.0")
  gem.add_development_dependency("rake", "~> 0.9.0")
  gem.add_development_dependency("simplecov", "~> 0.6.0")
  gem.add_development_dependency("pry", ">= 0")
  gem.add_development_dependency("yard", "~> 0.8.0")
  gem.add_development_dependency("redcarpet", "~> 2.1.0")
  gem.add_development_dependency("github-markup", "~> 0.7.0")
end

