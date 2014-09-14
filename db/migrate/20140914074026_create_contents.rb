class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.belongs_to :page, index: true

      t.timestamps
    end
  end
end
