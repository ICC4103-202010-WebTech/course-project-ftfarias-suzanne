class AddCommentToCommentReport < ActiveRecord::Migration[6.0]
  def change
    add_reference :comment_reports, :comment, null: true, foreign_key: true
  end
end
