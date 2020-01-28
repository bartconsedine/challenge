class CreateJoinTableCollegeApplicant < ActiveRecord::Migration[5.2]
  def change
    create_join_table :colleges, :applicants do |t|
      # t.index [:college_id, :applicant_id]
      # t.index [:applicant_id, :college_id]
    end
  end
end
