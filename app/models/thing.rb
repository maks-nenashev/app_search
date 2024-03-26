class Thing < ApplicationRecord
    belongs_to :user
    
    has_one_attached :image # Foto!
    has_rich_text :text #Trix
    
    has_many :comments, as: :commentable, dependent: :destroy # Podkluchenie "Comments" Rukami 
    
    belongs_to :choice
    belongs_to :local
    
    def self.ransackable_attributes(auth_object = nil)
        ["image", "created_at", "id", "local_id", "choice_id", "text", "title", "updated_at"]
        end
      def self.ransackable_associations(auth_object = nil)
        ["comments", "local", "choice"]
        end
      
end
