module ApplicationCable
  class Connection < ActionCable::Connection::Base
  identified_by :current_customer

    def connect
      self.current_customer = find_verified_customer
    end

    protected
    def find_verified_customer
      Customer.find(session['warden.user.customer.key'][0][0])
    rescue
      reject_unauthorized_connection
    end

    def session
      @session ||= cookies.encrypted[Rails.application.config.session_options[:key]]
    end
  end
end
