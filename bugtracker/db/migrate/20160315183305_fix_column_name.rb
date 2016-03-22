class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tickets, :status_id, :statuses_id
    end
end

