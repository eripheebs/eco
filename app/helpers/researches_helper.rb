module ResearchesHelper
  def research_params
    if params['research']
      params['research'].permit(:topic, :user_id, :description)
    else
      params.permit(:topic, :user_id, :description)
    end
  end

  def get_unique(researches)
    researches.map {|research| research.topic }.uniq
  end

  def search_contains_characters(params)
    match_data = params[:topic] =~ /\w/
    match_data != nil
  end

  def notify_and_redirect(topic)
    flash[:notice] = "Your research with topic \"#{topic}\" has been submitted."
    redirect_to '/researches'
  end

  def alert_and_redirect(research)
    flash[:alert] = research.errors.empty? ? generic_error : specific_error(research)
    redirect_to '/researches/new'
  end

  def generic_error
    return "Sorry, there was a problem submitting your research."
  end

  def specific_error(research)
    research.errors.full_messages.to_sentence
  end
end
