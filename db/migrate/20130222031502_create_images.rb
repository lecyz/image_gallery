class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :desct
      t.string :comment

      t.timestamps
    end
  end
end
