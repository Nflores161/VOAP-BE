class GenreSerializer < ActiveModel::Serializer
  attributes :id, :punk, :d_beat, :egg_punk, :chain_punk, :heavy_metal, :war_metal, :death_metal, :metal, :electronic, :indie, :pop, :synth_pop, :goth, :industrial, :post_punk, :shoegaze, :pop_punk, :shoegaze, :hip_hop, :techno, :ebm

  has_many :users
  has_many :art_images
end
