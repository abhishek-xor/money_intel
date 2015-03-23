class EducationsController < ApplicationController

 
  def new
  end

  def questionnaire
    @risk_profile ||= RiskProfile.new
  end
  
  def create
  	@risk_profile = RiskProfile.new(risk_profile_params)
	respond_to do |format|
	  if @risk_profile.save
	    format.html { redirect_to new_educations_path, notice: 'Questionnaire was successfully created.' }
	    format.json { render json: @risk_profile, status: :created, location: new_educations_path }
	  else
	    format.html { render action: "questionnaire" }
	    format.json { render json: @risk_profile.errors, status: :unprocessable_entity }
	  end
	end
  end
  
  private

  def risk_profile_params
  	params.require(:risk_profile).permit(:annual_income,:other_retirement_savings,
  	:investment_type_id,:investment_choice_id,:user_id)
  end
end
