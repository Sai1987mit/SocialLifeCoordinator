class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :password
      t.string :groupname
      
      t.timestamps
    end
  end
end
