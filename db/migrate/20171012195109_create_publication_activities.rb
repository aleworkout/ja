class CreatePublicationActivities < ActiveRecord::Migration
  def change
    create_table :publication_activities do |t|
      t.integer :publication_id
      t.integer :activity_type_id
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
