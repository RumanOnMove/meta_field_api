class CreateMetaFieldApiMetafields < ActiveRecord::Migration[7.0]
  def change
    create_table :meta_field_api_metafields do |t|
      t.string :namespace
      t.string :key
      t.text :value
      t.text :description
      t.text :type
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end
end
