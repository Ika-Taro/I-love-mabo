class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :name, null: false
      t.integer :moto_id
      t.integer :touban_id
      t.integer :touchi_id
      t.integer :tenmen_id
      t.integer :soy_sauce_id
      t.integer :sake_id
      t.integer :soup_id
      t.integer :chili_pepper_id
      t.integer :oil_id
      t.integer :minced_meat_id
      t.integer :negi_id
      t.integer :tofu_id
      t.integer :garlic_id
      t.integer :ginger_id
      t.integer :huajiao_id
      t.text :explanatory_note

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
