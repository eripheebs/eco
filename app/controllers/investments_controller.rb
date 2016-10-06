class InvestmentsController < ApplicationController
  include InvestmentsHelper
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @searched_investment = params[:title]
    if search_contains_characters(params)
      @investments =  Investment.where(title: params[:title]).order(:title)
    else
      @investments = Investment.all.order(:title)
    end
    @investment_titles = get_unique(@investments)
  end

  def new
    @investment = Investment.new
  end

  def create
    investment = Investment.new(investment_params)
    investment.user_id = current_user.id
    if investment.save
      notify_and_redirect(investment[:title])
    else
      alert_and_redirect(investment)
    end
  end

  def show
    @investment = Investment.find(params[:id])
  end

  def edit
    @investment = Investment.find(params[:id])
  end

  def update
    investment = Investment.find(params[:id])
    investment.update(investment_params)
    redirect_to investment_path
  end

  def destroy
    @investment = Investment.find(params[:id])
  end
end
