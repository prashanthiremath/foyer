module Foyer
  class OmniauthCallbacksController < ActionController::Base
    include Controller::Helpers

    def callback
      raise NotImplementedError
    end

    protected
    def after_sign_in_path
      origin || root_path
    end

    private
    def origin
      request.env['omniauth.origin']
    end

    def auth_hash
      request.env['omniauth.auth']
    end
  end
end
