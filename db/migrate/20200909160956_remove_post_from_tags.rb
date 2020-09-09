class RemovePostFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tags, :post, null: false, foreign_key: true
  end
end
