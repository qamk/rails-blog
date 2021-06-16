class RemoveStatusFromArticles < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :status, :text
  end
end
