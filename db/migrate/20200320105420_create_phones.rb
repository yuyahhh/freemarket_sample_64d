class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :phone, null: false
      t.references :user
      t.timestamps
    end

    add_index :phones, :phone, unique: true
  end
end
