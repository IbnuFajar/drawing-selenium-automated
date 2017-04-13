require 'selenium-webdriver'
require 'rubygems'
require 'test/unit'

driver = Selenium::WebDriver.for :firefox

Given(/^I Open sketchtoy$/) do
  driver.get "http://sketchtoy.com/"
  sleep(5)
end

Then(/^I Want to drawing$/) do
  driver.find_element(:xpath, "html/body/div[1]/div[5]/div[2]/canvas").click
  element = driver.find_element(:xpath, "html/body/div[1]/div[5]/div[2]/canvas");
  driver.action.move_to(element).perform
  driver.action.click_and_hold(element).perform
  driver.action.move_by(150, 50).click.perform
  driver.action.move_to(element).perform
  driver.action.click_and_hold(element).perform
  driver.action.move_by(100, 50).click.perform
  driver.action.move_to(element).perform
  driver.action.click_and_hold(element).perform
  driver.action.move_by(300, 10).click.perform
  sleep (5)
end
