class PostHashTag < ActiveRecord::Base
    belongs_to :post
    belongs_to :hash_tag
end
