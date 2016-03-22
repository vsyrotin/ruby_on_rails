class AddColumns < ActiveRecord::Migration
 def self.up
   add_column :tickets, :email, :string
 end
 end

