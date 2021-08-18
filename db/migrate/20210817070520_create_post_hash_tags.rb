class CreatePostHashTags < ActiveRecord::Migration
  def self.up
    create_table :post_hash_tags do |t|
      t.belongs_to :post, :index => true
      t.belongs_to :hash_tag, :index => true

      t.timestamps
    end
  end

  def self.down
    drop_table :post_hash_tags
  end
end
