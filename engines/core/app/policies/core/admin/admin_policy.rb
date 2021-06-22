module Core
  module Admin
    class AdminPolicy < Struct.new(:user, :admin)
      def index?
        user.admin?
      end
    end
  end
end