class AddUserIdToTalks < ActiveRecord::Migration[6.0]
  def change
    add_reference :talks, :user, null: false, foreign_key: true
  end
end
