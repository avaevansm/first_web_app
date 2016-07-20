require 'bundler/setup'
require 'sinatra/base'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'


require './sinatra.rb'

class TestSuite < Minitest::Test
  include Rack::Test::Methods

  def app
    Iloveny
  end


  def test_home_page
  response =  get "/"
  assert_equal "Hello Children", response.body
  end

  def test_welcome
    response = get "/ava"
    assert_equal "ava, do you have any more gum?", response.body
  end

  def test_lorem_page
    response = get "/lorem/cat"
    assert_include? response.body, "Stare at ceiling light cats go for world domination, but leave fur on owners clothes sleep on keyboard hate dog"
  end




end
