require 'selenium-webdriver'
require 'rspec'
require 'pry'

require '/home/administrator/projects/ruby_cucumber_selenium_framework/base/elements.rb'
require '/home/administrator/projects/ruby_cucumber_selenium_framework/base/methods.rb'
require '/home/administrator/projects/ruby_cucumber_selenium_framework/base/pathes.rb'
require '/home/administrator/projects/ruby_cucumber_selenium_framework/base/base_page.rb'
Dir['/home/administrator/projects/ruby_cucumber_selenium_framework/initializers/*.rb'].each { |file| require file }
Dir['/home/administrator/projects/ruby_cucumber_selenium_framework/pages/*.rb'].each { |file| require file }

Before do |scenario|
  puts 'Before block'
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--disable-translate')

  $driver = Selenium::WebDriver.for :chrome, options: options
end

After do |scenario|
  puts 'After block'
end
