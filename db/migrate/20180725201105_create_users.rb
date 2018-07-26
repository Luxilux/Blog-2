class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.belongs_to :article, index: true #clé etrangere article
      t.belongs_to :like, index: true #ici le like a été rajouter après le (rails db :migrate)
      t.timestamps
    end
  end
end
