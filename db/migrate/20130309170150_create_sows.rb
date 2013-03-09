class CreateSows < ActiveRecord::Migration
  def change
    create_table :sows do |t|
      t.string :description

      t.timestamps
    end
  end
end
