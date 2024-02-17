class Sense < ApplicationRecord
    has_one_attached :image # Foto!
  
    has_many :comments, as: :commentable, dependent: :destroy # Podkluchenie "Comments" Rukami 
 
    belongs_to :local
end
