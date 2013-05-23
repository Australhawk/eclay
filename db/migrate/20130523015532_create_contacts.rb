class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :business
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
