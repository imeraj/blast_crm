module Tasks
  class Task < ApplicationRecord
    belongs_to :user, class_name: "Core::User"
    belongs_to :contact, class_name: "Contacts::Contact", optional: true
  end
end
