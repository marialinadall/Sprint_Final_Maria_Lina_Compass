require 'cucumber'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver' 
require 'pry'
require 'site_prism'
require 'faker'
require 'i18n'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    browser = ENV.fetch('browser', 'chrome').to_sym
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => ["--incognito", "--start-maximized", "--window-size=1420,835", "--ignore-ssl-errors", "--ignore-certificate-errors","--disable-popup-blocking","--no-sandbox","--acceptInsecureCerts=true", "--disable-impl-side-painting", "--debug_level=3", "--disable-gpu", "--disable-translate"]})

    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
        caps['goog:chromeOptions']['args'] << '--disable-site-isolation-trials'
    end

    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90

    Capybara::Selenium::Driver.new(app, browser: browser, desired_capabilities: caps, http_client: client)
end 

Capybara.configure do |config|
    Capybara.default_driver = :my_chrome
end 

Capybara.default_driver =        :my_chrome
Capybara.app_host =               URL
Capybara.default_max_wait_time =  10



