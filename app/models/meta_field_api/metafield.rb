module MetaFieldApi
  class Metafield < ApplicationRecord
    self.table_name = "meta_field_api_metafields"
    belongs_to :owner, polymorphic: true
  end
end
