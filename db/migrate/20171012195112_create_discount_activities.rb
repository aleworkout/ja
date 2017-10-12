class CreateDiscountActivities < ActiveRecord::Migration
  def change
    create_table :discount_activities do |t|
      t.integer :discount_id
      t.integer :activity_type_id
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
