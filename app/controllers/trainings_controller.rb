class TrainingsController < ApplicationController

  before_action :move_to_index, except: [:index,:show]

  def index
    train_ids = Training.group(:id).order('id DESC').page(params[:page]).per(7)
    @dates = train_ids.all
  end

  def new
  end


  def create
    Training.create(menu:training_params[:menu], user_id:current_user.id)
  end


  def show
    @train_day = Training.find(params[:id])
    @trainings = @train_day.created_at.strftime('%Y年 %m月%d日 [%a]')
    @coach = @train_day.user.Nickname

    @menu = @train_day.menu
  end

  def destroy
    training = Training.find(params[:id])
    if training.user_id == current_user.id
      training.destroy
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    training = Training.find(params[:id])
    if training.user_id == current_user.id
    training.update(training_params)
    end
  end


  private

    def training_params
      params.permit(:menu)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end


  end



