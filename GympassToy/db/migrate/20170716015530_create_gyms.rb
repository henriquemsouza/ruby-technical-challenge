class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :gym_name
      t.string :address
      t.string :open_time
      t.string :close_time
      t.string :gym_manager

      t.timestamps
    end
  end
end
