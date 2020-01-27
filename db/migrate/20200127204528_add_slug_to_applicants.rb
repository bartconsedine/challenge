class AddSlugToApplicants < ActiveRecord::Migration[5.2]
  def change
    add_column :applicants, :slug, :string
    add_index :applicants, :slug, unique: true
  end
end
