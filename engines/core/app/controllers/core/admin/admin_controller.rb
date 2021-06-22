module Core
  module Admin
    class AdminController < ApplicationController
      def index
        authorize [:core, :admin, :admin], :index?

        @users = Core::Admin::UsersPolicy::Scope.new(current_user, Core::User).resolve.ordered.limit(3)
        @users_count = Core::Admin::UsersPolicy::Scope.new(current_user, Core::User).resolve.count
      end
    end
  end
end