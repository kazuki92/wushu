class TrainingsController < ApplicationController

  before_action :move_to_index, except: [:index,:show]

  def index
    train_ids = Training.group(:id).order('id DESC').page(params[:page]).per(7)
    @dates = train_ids.all
  end

  def new
  end


  def create
    Training.create(name:training_params[:name], menu:training_params[:menu])
  end


  def show
    train_day = Training.find(params[:id])
    @trainings = train_day.created_at.strftime('%Y年 %m月%d日 [%a]')
    @coach = train_day.name

    @menu = train_day.menu
  end



  private

    def training_params
      params.permit(:name, :menu)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end


  end



