module Contacts
  class Contact < ApplicationRecord
    belongs_to :user, class_name: "Core::User"
  end
end
