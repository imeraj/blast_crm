module Core
  module Admin
    class UsersPolicy < ApplicationPolicy
      def index?
        user.admin?
      end

      class Scope < Scope
        def resolve
          if user.admin?
            scope.all
          else
            scope.none
          end
        end
      end
    end
  end
end
