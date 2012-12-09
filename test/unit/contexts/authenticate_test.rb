require 'test_helper'

class AuthenticateTest < ActiveSupport::TestCase
  class ActionController
    attr_accessor :username, :password

    def initialize(username, password)
      @username = username
      @password = password
    end

    def authenticate_or_request_with_http_basic(&block)
      yield(@username, @password)
    end
  end

  setup do
    @controller = ActionController.new('username', 'password')
    @credentials = BasicCredentials.new('username', 'password')
  end

  test "authenticate" do
    assert Authenticate.call(@controller, @credentials)
  end

  test "basic authentication" do
    assert BasicAuthenticate.call(@controller, @credentials)
  end

  test "can't authenticate" do
    assert !BasicAuthenticate.call(@controller, BasicCredentials.new('ugh', 'ugh'))
  end
end
