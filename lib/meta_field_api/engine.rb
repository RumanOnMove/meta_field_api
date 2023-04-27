module MetaFieldApi
  class Engine < ::Rails::Engine
    isolate_namespace MetaFieldApi
    config.generators do |g|
      g.orm :active_record, migration: true
    end
  end
end
