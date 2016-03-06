class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :body

      t.timestamps null: false
    end
  end
end
