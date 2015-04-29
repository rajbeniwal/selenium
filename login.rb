require 'rubygems'
require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :firefox
# driver.get "https://accounts.google.com/ServiceLogin?service=mail&continue=https://mail.google.com/mail/"


# driver.find_element(:id, "Email").send_keys('username')
# driver.find_element(:id, "Passwd").send_keys('password')
# driver.find_element(:id, "signIn").click
  
# #error handling goes here
# wait = Selenium::WebDriver::Wait.new(:timeout => 20)
# wait.until { driver.find_element(:class, " error-msg").text.include?("The email or password you entered is incorrect.")}

# puts "Page title is #{driver.title}"
# driver.quit


def setup
	@driver = Selenium::WebDriver.for :firefox
end

def login
	@driver.get "https://accounts.google.com/ServiceLogin?service=mail&continue=https://mail.google.com/mail/"
	@driver.find_element(:id, "Email").send_keys('username')
    @driver.find_element(:id, "Passwd").send_keys('password')
    @driver.find_element(:id, "signIn").click
end


def teardown
	@driver.quit
end


def run
	setup
	login
	teardown
end

run do
   puts"Page title is #{driver.title}"
end

