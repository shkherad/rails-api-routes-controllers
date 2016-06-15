class ActorsController < ApplicationController
  def index         # GET /movies
    render json: actors
  end

  def show
    id = params[:id].to_i
    render json: actors.find {|actor| actor[:id] == id}
  end

  def create
    render text: 'An actor has been born'
  end

  def update
    render text: 'An actor has been updated!'
  end

  def destroy
    render text: 'You killed the actor :( !'
  end


  private
  def actors        # TEMPORARY - FOR TODAY ONLY!!
    [
      {id: 1, name: 'Bradley Cooper', rating: 'R', movies: ["Silver Linings", "American Sniper"]},
      {id: 2, name: 'Leonardo Di Caprio', rating: 'R', movies: ["Titanic"]},
      {id: 3, name: 'Adam Sandler', rating: 'R', movies: ["50 First Dates"]}
    ]
  end
  end
