class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :source_url
      t.string :site_url
      t.text :body
      t.datetime :article_date
      t.integer :refid
      
      t.timestamps null: false
    end
  end
end
