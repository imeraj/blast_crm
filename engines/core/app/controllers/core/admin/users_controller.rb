module Core
  module Admin
    class UsersController < Core::ApplicationController
      def index
        authorize [:core, :admin, :users], :index?

        @users = Core::Admin::UsersPolicy::Scope.new(current_user, Core::User).resolve.ordered
        @users_count = @users.count
      end
    end
  end
end