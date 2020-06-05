class AddStartDateOptionToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :start_date_option, null: true, foreign_key: true
  end
end
