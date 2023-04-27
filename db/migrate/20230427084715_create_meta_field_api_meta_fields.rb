class CreateMetaFieldApiMetaFields < ActiveRecord::Migration[7.0]
  def change
    create_table :meta_field_api_meta_fields do |t|
      t.integer :owner_id
      t.string :meta_type
      t.json :meta_attributes

      t.timestamps
    end
  end
end
