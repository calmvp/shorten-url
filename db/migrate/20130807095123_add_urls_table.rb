class AddUrlsTable < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string  :long_name
      t.string  :short_name
      t.integer :click_count

      t.timestamps
    end
  end
end
