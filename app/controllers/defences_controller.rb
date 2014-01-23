class DefencesController < ApplicationController

  include Wicked::Wizard

  steps :about_the_case, :personal_details, :finances, :check_details

  def show
    case step
    when :about_the_case
    when :personal_details
    when :finances
    when :check_details
    end
    render_wizard
  end
end
