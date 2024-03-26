class AddUserIdToSenses < ActiveRecord::Migration[7.0]
  def change
    add_reference :senses, :user, null: false, foreign_key: true
  end
end
