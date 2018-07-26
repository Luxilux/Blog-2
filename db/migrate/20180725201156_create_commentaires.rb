class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.text :content_comment
      t.belongs_to :user, index: true #clé etrangere user
      t.belongs_to :article, index: true #clé etrangere article
      t.timestamps
    end
  end
end
