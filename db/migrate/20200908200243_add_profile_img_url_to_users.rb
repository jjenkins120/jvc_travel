class AddProfileImgUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_img_url, :string
  end
end
