module Core
  module Admin
    class UsersController < Core::ApplicationController

      def index
        @users = Core::User.all
      end

    end
  end
end