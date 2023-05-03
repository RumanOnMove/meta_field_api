class CreateMetaFieldApiMetafields < ActiveRecord::Migration[7.0]
  def change
    create_table :meta_field_api_metafields do |t|
      t.string :namespace
      t.string :key
      t.text :value
      t.text :description
      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end
  end
end
