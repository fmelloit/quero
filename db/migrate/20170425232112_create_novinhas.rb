class CreateNovinhas < ActiveRecord::Migration[5.0]
  def change
    create_table :novinhas do |t|
      t.string :nome
      t.date :data_picote
      t.decimal :nota

      t.timestamps
    end
  end
end
