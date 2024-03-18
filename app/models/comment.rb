class Comment < ApplicationRecord
    has_rich_text :body #Text
    
    belongs_to :commentable, polymorphic: true
end
