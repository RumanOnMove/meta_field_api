module MetaFieldApi
  class Metafield < ApplicationRecord
    # Associations
    belongs_to :owner, polymorphic: true

    # Validations
    validates :namespace, presence: true, length: {maximum: 55}
    validates :key, presence: true, length: {maximum: 55}
    validates :value, presence: true
    validates :description, presence: false, length: {maximum: 255}
    validates :my_type, presence: true, length: {maximum: 55}
    validates :owner_id, presence: true
    validates :owner_type, presence: true

    # Attributes
    self.table_name = "meta_field_api_metafields"
    self.inheritance_column = :my_type

    # Alias for type column to avoid conflict with Rails' inheritance column
    def my_type
      read_attribute(:type)
    end

    def my_type=(value)
      write_attribute(:type, value)
    end

    # Scope
    scope :filter_by, -> (owner_type = nil, owner_id = nil, key = nil, namespace = nil) do
      filter_params = {}
      filter_params[:owner_type] = owner_type if owner_type.present?
      filter_params[:owner_id] = owner_id if owner_id.present?
      filter_params[:key] = key if key.present?
      filter_params[:namespace] = namespace if namespace.present?
      where(filter_params)
    end
  end
end
