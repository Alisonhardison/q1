class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :idea
      t.string :description
      
      t.timestamps
    end
  end
end
