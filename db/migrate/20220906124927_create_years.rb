class CreateYears < ActiveRecord::Migration[7.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.integer :monthly_target
      t.integer :january
      t.integer :febuary
      t.integer :march
      t.integer :april
      t.integer :may
      t.integer :june
      t.integer :july
      t.integer :august
      t.integer :september
      t.integer :october
      t.integer :november
      t.integer :december
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
