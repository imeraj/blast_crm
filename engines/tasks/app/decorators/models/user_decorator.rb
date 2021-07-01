Core::User.class_eval do
  has_many :tasks, class_name: "Tasks::Task"
end