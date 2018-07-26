class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :article, index: true #clé etrangere article
      t.belongs_to :user, index: true #clé etrangere user
      t.timestamps
    end
  end
end
