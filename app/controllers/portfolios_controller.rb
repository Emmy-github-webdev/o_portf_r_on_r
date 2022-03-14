# frozen_string_literal: true

class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :reactjs], user: {except: [:destroy, :new, :create, :update, :edit]}, portfolio_admin: :all

  def index
    @portfolio_items = Portfolio.all
  end
  
def reactjs
  @portfolio_react = Portfolio.reactjs
end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
   
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  def destroy
    
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully removed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(
      :title, 
      :subtitle, 
      :body, 
      technologies_attributes: [:name]
    )
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
  

  
end
