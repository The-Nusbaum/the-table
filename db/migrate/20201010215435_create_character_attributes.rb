class CreateCharacterAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :character_attrs do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :attr, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
