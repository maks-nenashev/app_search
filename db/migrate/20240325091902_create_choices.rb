class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
     
      t.string :title

      t.timestamps
    end
    
    Choice.create :title => "Шукаємо"
    Choice.create :title => "Знайшли"
  
  end
end
