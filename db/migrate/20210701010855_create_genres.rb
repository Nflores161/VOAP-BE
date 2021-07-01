class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :punk
      t.string :d_beat
      t.string :egg_punk
      t.string :chain_punk
      t.string :heavy_metal
      t.string :war_metal
      t.string :death_metal
      t.string :metal
      t.string :electronic
      t.string :indie
      t.string :pop
      t.string :synth_pop
      t.string :goth
      t.string :industrial
      t.string :post_punk
      t.string :shoegaze
      t.string :pop_punk
      t.string :hip_hop
      t.string :techno
      t.string :ebm

      t.timestamps
    end
  end
end
