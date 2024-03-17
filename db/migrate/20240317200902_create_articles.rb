class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :article_type
      t.string :medical_use
      t.string :classification
      t.string :strain
      t.string :category
      t.string :brand

      t.timestamps
    end
  end
end
