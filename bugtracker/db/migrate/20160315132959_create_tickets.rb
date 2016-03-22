class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :status_id
      t.integer :users_id
      t.integer :clients_id
      t.text :problem

      t.timestamps
    end
  end
end
