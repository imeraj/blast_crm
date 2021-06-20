module Core
  module ApplicationHelper
    FLASH_CLASSES = {
      notice: 'alert alert-info',
      success: 'alert alert-success',
      alert: 'alert alert-danger',
      error: 'alert alert-danger'
    }.freeze

    def flash_class(level)
      FLASH_CLASSES[level]
    end

    def active_admin(path)
      return 'active' if path.split("/").second == "admin"
    end

    def active(path)
      current_page?(path) ? 'active' : ''
    end
  end
end
