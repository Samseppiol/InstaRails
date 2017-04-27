class CreatePhotoComments < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_comments do |t|
      t.references :photo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    # Can a user like a photo more than once? No.
    # So we add a unique index.
  end 
end
