class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.save

    if @pokemon.health <= 0
      @pokemon.destroy
    end

    redirect_to trainer_path(id: current_trainer.id)
  end
  
end
