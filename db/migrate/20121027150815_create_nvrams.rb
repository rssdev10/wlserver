class CreateNvrams < ActiveRecord::Migration
  def change
    create_table :nvrams do |t|
      t.string :name
      t.string :val

      t.timestamps
    end
  end
end
