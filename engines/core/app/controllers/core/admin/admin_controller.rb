module Core
  module Admin
    class AdminController < Core::ApplicationController

      def index
        @users = Core::User.all
      end

    end
  end
end