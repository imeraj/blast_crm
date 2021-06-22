module Core
  class DashboardController < ApplicationController
    def index
      authorize [:core, :dashboard], :index?
    end
  end
end
