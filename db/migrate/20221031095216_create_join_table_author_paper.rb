class CreateJoinTableAuthorPaper < ActiveRecord::Migration[7.0]
  def change
    create_join_table :authors, :papers do |t|
      t.index %i[author_id paper_id]
      t.index %i[paper_id author_id]
    end
  end
end
