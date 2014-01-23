class RepossessionClaimDefence < ActiveResource::Base
  self.site = Rails.configuration.api_uri

  schema do
    # Do you agree you've fallen behind in paying the rent
    string 'agree_behind_in_rent'
    string 'agree_unpaid_rent_amount'
    string 'claimed_unpaid_rent_amount'
    string 'has_paid_towards_unpaid_rent'
    string 'paid_towards_unpaid_rent_amount'
    string 'date_paid'
    string 'has_agreed_instalments'
    string 'instalment_payment_amount'
    string 'instalment_payment_frequency'
    string 'afford_on_top_of_current_rent'
    string 'on_top_of_current_rent_frequency'

    # Notice seeking possession
    string 'received_notice_seeking_possession'
    string 'received_notice_date'

    # Counterclaim
    string 'made_counterclaim_against_council'
    string 'counterclaim_case_number'
  end

  def initialize(*args)
    # Make sure we always have associations assigned, so that activeresource doesn't request them
    args[0] ||= {}
    args[0] = {
    }.merge(args[0])
    super(*args)
  end

end

