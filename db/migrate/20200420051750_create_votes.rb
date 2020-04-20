class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.datetime :votedate

      t.timestamps
    end
  end
end
