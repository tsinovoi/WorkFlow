class AddColumnsToSoW < ActiveRecord::Migration
  def change
    add_column :sows, :project_name, :string
    add_column :sows, :contract_type, :string
    add_column :sows, :portfolio, :string
    add_column :sows, :start_date, :date
    add_column :sows, :end_date, :date
    add_column :sows, :creator_id, :integer
    add_index :sows, :creator_id
    add_column :sows, :assigned_to_id, :integer
    add_index :sows, :assigned_to_id
    add_column :sows, :value, :decimal
  end
end
