class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :fname
      t.string :lname
      t.string :email, unique: true
      t.string :password_digest
      t.string :state
      t.string :city
      t.string :street
      t.string :zip_code
      t.string :i_am
      t.string :looking_for
      t.string :sex
      t.string :headline
      t.text :description
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
