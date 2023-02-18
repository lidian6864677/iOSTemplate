source "https://rubygems.org"
gem "cocoapods", "1.10.1"
gem "cocoapods-imy-bin", "0.3.1.3"

# for fastlane
gem "fastlane", ">= 2.174.0"

# for diff_ipa
gem "filesize", "0.2.0"
gem "terminal-table", "1.8.0"
gem "rubyzip", "2.3.0"

plugins_path = File.join(File.dirname(__FILE__), "fastlane", "Pluginfile")
eval_gemfile(plugins_path) if File.exist?(plugins_path)
