class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.text :searching_for

      t.timestamps
    end
  end
end
