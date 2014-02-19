class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.integer :age, numericality: { only_integer: true }, null: true
      t.date :birth_date
      t.string :color, inclusion: { in: %w(calico black white brown green) }, null: true
      t.string :name, null: true
      t.string :sex, inclusion: { in: %w(M F) }, null: true

      t.timestamps
    end


  end
end
