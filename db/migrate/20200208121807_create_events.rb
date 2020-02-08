class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :from
      t.datetime :to
      t.string :venue
      t.text :directions

      t.timestamps
    end
  end
end
