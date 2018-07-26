class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :categorie_name
      t.belongs_to :article, index: true #clé etrangere article
      t.timestamps
    end
  end
end
