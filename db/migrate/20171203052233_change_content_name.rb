class ChangeContentName < ActiveRecord::Migration[5.1]
  def change
    rename_column :resumes, :content, :attachment
  end
end
