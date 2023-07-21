class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :user
      t.string :title
      t.string :catch_copy
      t.text :image
      t.timestamps
    end
  end
end
