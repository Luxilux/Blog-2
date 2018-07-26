class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true #clé etrangere user
      t.belongs_to :categorie, index: true #clé etrangere user
      t.timestamps
    end
  end
end
