Core::User.class_eval do
  has_many :contacts, class_name: "Contacts::Contact"
end