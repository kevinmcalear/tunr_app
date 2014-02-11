class ChangeArtists < ActiveRecord::Migration
  def change 
    change_table :artists do |t|
      t.references :user
    end
  end
end
