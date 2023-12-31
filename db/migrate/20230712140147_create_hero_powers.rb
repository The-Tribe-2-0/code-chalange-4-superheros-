class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.string :strength
      t.references :hero, foreign_key: true
      t.references :power, foreign_key: true
      t.timestamps
    end
  end
end
