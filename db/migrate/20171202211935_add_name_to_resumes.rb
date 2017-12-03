class AddNameToResumes < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :name , :string
  end
end
