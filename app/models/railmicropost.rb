class Railmicropost < ActiveRecord::Base
    belongs_to :railuser
    validates :content, length: { maximum: 140 }
end
