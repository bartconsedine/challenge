class ApplicantsController < ApplicationController
  class AppCol
    def initialize(name, applications)
      # Instance variables
      @name = name
      @applications = applications
    end
  end

  def index
    $my_instances = {}
    # $my_instances[1] = {one: 2}
    @applicants = Applicant.all

    def allApplicants
      @applicants.each do |e|
      end
    end

    # render json: allApplicants
  end

#   def new

#   end

  def create
    puts params.id
    @applicant = Applicant.new(applicant_params)
    

    @applicant.save
    redirect_to @applicant
  end

  def show
    # @applicant = Applicant.find(params[:id])
    @applicant = Applicant.friendly.find(params[:id])

    def name
      @applicant.name
    end

    def allColleges
      #   @applicant.colleges.each do |college|
      #   end
      @applicant.colleges.order("score DESC")
    end

  

    both = AppCol.new(name, allColleges)

    # render json:
    # @applicant.colleges.each do |college|

    # end

    puts @applicant.inspect

    render json: both
  end

  private

  def applicant_params
    params.require(:applicant).permit(:name)
    
  end
end
