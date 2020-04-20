class AddStartDatePollToVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :start_date_poll, null: true, foreign_key: true
  end
end
