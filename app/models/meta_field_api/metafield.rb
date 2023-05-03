module MetaFieldApi
  class Metafield < ApplicationRecord
    self.table_name = "meta_field_api_metafields"
    belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  end
end
