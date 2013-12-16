class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :farm
      t.string :server
      t.string :photo_id
      t.string :secret

      t.timestamps
    end
  end
end
