class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.text :searching_for
      t.integer :frequency, default: 1, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
