class CreateStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :statistics do |t|
      t.string :name, null: false
      t.integer :amount, null: false
      t.boolean :show, default: true
      t.timestamps
    end
  end
end
