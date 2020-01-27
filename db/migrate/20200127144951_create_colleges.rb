class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string :college
      t.integer :score
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
