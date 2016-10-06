module InvestmentsHelper
  def investment_params
    if params['investment']
      params['investment'].permit(:title, :industry, :user_id, :description, :ngo, :contact_email)
    else
      params.permit(:title, :industry, :user_id, :description, :ngo, :contact_email)
    end
  end

  def get_unique(investments)
    investments.map {|investment| investment.title }.uniq
  end

  def search_contains_characters(params)
    match_data = params[:title] =~ /\w/
    match_data != nil
  end

  def notify_and_redirect(title)
    flash[:notice] = "Your investment titled \"#{title}\" has been submitted."
    redirect_to '/investments'
  end

  def alert_and_redirect(investment)
    flash[:alert] = investment.errors.empty? ? generic_error : specific_error(investment)
    redirect_to '/investments/new'
  end

  def generic_error
    return "Sorry, there was a problem submitting your investment."
  end

  def specific_error(investment)
    investment.errors.full_messages.to_sentence
  end
end
