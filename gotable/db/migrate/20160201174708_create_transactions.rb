class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.boolean :status
      t.decimal :amount
      t.string :first_name
      t.string :last_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
