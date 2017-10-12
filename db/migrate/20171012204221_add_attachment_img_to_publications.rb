class AddAttachmentImgToPublications < ActiveRecord::Migration
  def self.up
    change_table :publications do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :publications, :img
  end
end
