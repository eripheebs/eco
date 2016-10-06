class ResearchesController < ApplicationController
  include ResearchesHelper
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @searched_research = params[:topic]
    if search_contains_characters(params)
      @researches =  Research.where(topic: params[:topic]).order(:topic)
    else
      @researches = Research.all.order(:topic)
    end
    @research_topics = get_unique(@researches)
  end

  def new
    @research = Research.new
  end

  def create
    research = Research.new(research_params)
    research.user_id = current_user.id
    if research.save
      notify_and_redirect(research[:topic])
    else
      alert_and_redirect(research)
    end
  end

  def show
    @research = Research.find(params[:id])
  end

  def edit
    @research = Research.find(params[:id])
  end

  def update
    research = Research.find(params[:id])
    research.update(research_params)
    redirect_to research_path
  end

  def destroy
    @research = Research.find(params[:id])
  end
end
