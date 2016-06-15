class MoviesController < ApplicationController
  def index         # GET /movies
    render json: movies
  end

  def show
    # render json: params
    id = params[:id].to_i
    render json: movies.find { |movie| movie[:id] == id}
  end

  def create
    render text: 'you created a new movie'
  end

  def update
    render text: 'you updated a movie!'
  end

  def destroy
    render text: 'you destroyed an existing movie!'
  end

  private
  def movies        # TEMPORARY - FOR TODAY ONLY!!
    [
      {id: 3, name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123},
      {id: 7, name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154},
      {id: 10, name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105}
    ]
  end
end
