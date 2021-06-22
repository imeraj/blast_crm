module Contacts
  class Engine < ::Rails::Engine
    isolate_namespace Contacts

    paths['app/views'] << 'app/views/contacts'

    initializer :append_migration do |app|
      unless app.root.to_s.match?(root.to_s)
        config.paths['db/migrate'].expanded.each do |p|
          app.config.paths['db/migrate'] << p
        end
      end
    end
  end
end
