class Blog < ActiveRecord::Base
     has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "missing.png"
     validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
     
     validates :title, presence: true,
                    length: { minimum: 5 }
     
     validates :body, presence: true,
                    length: { minimum: 20 }
end
