class CreateArtTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :art_types do |t|
      t.string :contemporary
      t.string :modern
      t.string :abstract
      t.string :cubism
      t.string :post_modern
      t.string :punk_style
      t.string :extreme
      t.string :sketchy
      t.string :geometric
      t.string :photography
      t.string :pop_art
      t.string :realism
      t.string :surrealism
      t.string :impressionism
      t.string :collage
      t.string :freestyle
      t.string :symbolism
      t.string :expressionism

      t.timestamps
    end
  end
end
