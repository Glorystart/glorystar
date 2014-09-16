class DropSomeTable < ActiveRecord::Migration
  def change
    drop_table :contentships
    drop_table :news
  end
end
