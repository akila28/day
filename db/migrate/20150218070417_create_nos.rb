class CreateNos < ActiveRecord::Migration
  def change
    create_table :nos do |t|
      t.date :opening_date
      t.date :closing_date
      t.integer :total

      t.timestamps null: false
    end
  end
end
