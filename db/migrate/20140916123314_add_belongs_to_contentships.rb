class AddBelongsToContentships < ActiveRecord::Migration
  def change
    add_reference :contentships, :notifications, index: true
  end
end
