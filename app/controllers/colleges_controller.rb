class CollegesController < ApplicationController
  class AppCol
    def initialize(name, applications)
      # Instance variables
      @name = name
      @applications = applications
    end
  end

  def create
    puts params
    @applicant = Applicant.find(params[:applicant_id])
    @college = @applicant.colleges.create(college_params)
    redirect_to applicant_path(@applicant)
  end

#   def index
#     # @colleges = College.all.joins(:applicant_id)

#     # puts @colleges
#     # render json: @colleges

#     @colleges = College.all

#     # puts @colleges.inspect

#     @finalOutput = {}

#     def allColleges
#       @colleges.each_with_index do |e, index|
#         # puts e.applicant_id
#         newClass = AppCol.new(e.applicant_id, e.applicant_id)
#         @finalOutput[index] = newClass

#         puts @finalOutput
#       end
#     end

#     puts @finalOutput

#     render json: allColleges
#   end

  def index
    # @collegeJoin = College.joins(applicant)
    @colleges = College.all


    render json: @colleges
  end

  def show
    @colleges = College.friendly.find(params[:id])
  end

  private

  def college_params
    puts params
    params.require(:college).permit(:college, :score)
  end
end
