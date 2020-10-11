class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :thingy # leaving for now
      t.belongs_to :user, foreign_key: true
      t.belongs_to :campaign, foreign_key: true
      t.string  :name, :string
      t.timestamps
    end
  end
end
