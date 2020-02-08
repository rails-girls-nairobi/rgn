class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.text :venue
      t.text :directions

      t.timestamps
    end
  end
end
