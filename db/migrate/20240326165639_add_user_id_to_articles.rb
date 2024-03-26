class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :user, null: false, foreign_key: true
  end
end
          #rails g migration add_user_id_to_articles user:belongs_to