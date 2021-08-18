class Post < ActiveRecord::Base
    belongs_to :user
    attr_accessible :description, :user_id, :image
    mount_uploader :image, ImageUploader
    validates_presence_of :image, :description

    has_many :post_hash_tags
    has_many :hash_tags, :through => :post_hash_tags

    after_create :create_hash_tags, :on => [:create]

    def extract_name_hash_tags
        description.to_s.scan(/#\w+/).map{|name| name.gsub("#", "")}
    end
   
    def create_hash_tags
        #create hash tags of Post
        extract_name_hash_tags.each do |name|
            hash_tags.create(:name => name)
        end
    end
end
