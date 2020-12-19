class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :cicle
      t.integer :plan
      t.integer :credits

      t.timestamps
    end
  end
end
