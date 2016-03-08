class RemoveColumnsFromProposal < ActiveRecord::Migration
  def change
    remove_column :proposals, :email, :string
    remove_column :proposals, :name, :string
  end
end
