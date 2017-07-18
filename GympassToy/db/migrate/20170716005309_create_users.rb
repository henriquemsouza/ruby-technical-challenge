class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :full_name
      t.string :home_address
      t.string :work_address
      t.string :job

      t.timestamps
    end
  end
end
