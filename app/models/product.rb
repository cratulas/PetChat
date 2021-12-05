class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items

    ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'
end
