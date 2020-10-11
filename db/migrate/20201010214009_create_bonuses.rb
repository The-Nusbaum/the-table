class CreateBonuses < ActiveRecord::Migration[5.2]
  def change
    create_table :bonuses do |t|
      t.string :object_type
      t.integer :object_id
      t.belongs_to :attr, foreign_key: true
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
