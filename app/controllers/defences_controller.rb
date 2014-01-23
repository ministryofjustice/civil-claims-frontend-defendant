class DefencesController < ApplicationController

  include Wicked::Wizard

  steps :about_the_case, :personal_details, :finances, :check_details

  def show
    @defence = RepossessionClaimDefence.new
    case step
    when :about_the_case
    when :personal_details
    when :finances
    when :check_details
    end
    render_wizard
  end

  def update
    # @defence = RepossessionClaimDefence.find(params[:defence_id])
    @defence = RepossessionClaimDefence.new
    begin
    @defence.update_attributes( defence_params )
    rescue Exception => e
      binding.pry
      raise e
    end
    render_wizard @defence
  end

  private

  def defence_params
    params[:repossession_claim_defence]
  end

end
