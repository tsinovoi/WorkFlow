class AddOwnerToPins < ActiveRecord::Migration
  def change
    add_column :pins, :owner, :string
  end
end
