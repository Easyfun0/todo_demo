class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.date :date
      t.string :price
      t.string :pages
      t.string :isbn

      t.timestamps
    end
  end
end
