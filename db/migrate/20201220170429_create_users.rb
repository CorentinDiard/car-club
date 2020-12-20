class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :lastname, default: ""
      t.string :firstname, default: ""
      t.string :email, default: "", unique: true
      t.string :username, default: ""
      t.string :password, default: ""
      t.string :profile_picture_url, default: ""
      t.boolean :member, default: false

      t.timestamps
    end
  end
end
