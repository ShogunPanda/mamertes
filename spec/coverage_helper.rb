# encoding: utf-8
#
# This file is part of the mamertes gem. Copyright (C) 2013 and above Shogun <shogun@cowtech.it>.
# Licensed under the MIT license, which can be found at http://www.opensource.org/licenses/mit-license.php.
#

require "pathname"
require "simplecov"
require "coveralls"

Coveralls.wear! if ENV["CI"] || ENV["JENKINS_URL"]

SimpleCov.start do
  root = Pathname.new(File.dirname(__FILE__)) + ".."

  add_filter do |src_file|
    path = Pathname.new(src_file.filename).relative_path_from(root).to_s
    path !~ /^(bin|lib)/
  end
end
