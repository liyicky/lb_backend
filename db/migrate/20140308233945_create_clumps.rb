class CreateClumps < ActiveRecord::Migration
  def change
    create_table :clumps do |t|
      t.string :url
      t.boolean :shit

      t.timestamps
    end
  end
end
