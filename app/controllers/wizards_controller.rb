class WizardsController < ApplicationController
  def create
  	puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
  	puts "Testing Creating a Wizard"
  	@wizard = Wizard.new(wizard_params)
  	@user = current_user
  	@wizard.user_id = @user.id
  	@wizard.save
  end

  def destroy
  end

  def new
  	@wizard = Wizard.new
  end

  private

  def wizard_params
    params.require(:wizard).permit(:name, :magic_type)   
	end
end
