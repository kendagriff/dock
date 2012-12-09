module Dock
  class Authenticate
    def self.call(controller, credentials)
      new(controller, credentials).call
    end

    def initialize(controller, credentials)
      @controller = controller
      @credentials = credentials
    end

    def call
      true
    end
  end

  class BasicAuthenticate < Authenticate
    def call
      @controller.authenticate_or_request_with_http_basic do |username, password|
        username == @credentials.username && password == @credentials.password
      end
    end
  end
end
