class AddAttachmentImagesToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :blogs, :images
  end
end
