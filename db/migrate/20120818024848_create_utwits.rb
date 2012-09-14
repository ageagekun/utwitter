class CreateUtwits < ActiveRecord::Migration
  def change
    create_table :utwits do |t|
      t.string :description, :null => :false
      t.integer :like, :null => :false, :default => 0
      t.integer :user_id
      t.timestamps
    end
  end
end
