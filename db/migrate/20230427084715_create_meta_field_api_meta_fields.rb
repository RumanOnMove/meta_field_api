class CreateMetaFieldApiMetaFields < ActiveRecord::Migration[7.0]
  def change
    create_table :meta_field_api_meta_fields do |t|
      t.integer :owner_id
      t.string :type
      t.json :attributes

      t.timestamps
    end
  end
end
