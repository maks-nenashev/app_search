class Article < ApplicationRecord
    
    #has_one_attached :image # Foto!
    
    validates :title, presence: true, length: {minimum: 2} #walidacija
    validates :text, presence: true#, length: {minimum: 2}

    has_many :comments, as: :commentable, dependent: :destroy# Podkluchenie "Comments" delaem
       
    
    belongs_to :local
    

end
