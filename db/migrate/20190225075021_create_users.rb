class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar_url
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
