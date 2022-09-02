class Api::BillboardController < ApplicationController
  def skip-routes
  end

  def index
    render json: Billboard.all
  end

  def show
    @billboard.find(params[:id])
      render json: @billboard
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      render json: @billboard
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end
  end

  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      render json: @billboard
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @billboard = Billboard.find(params[:id]) @billboard.destroy
    render json: { message: 'billboard deleted' }
    or Billboard.find(params[:id]).destroy
    render json: { message: 'billboard deleted' }
  end

  private
  def billboard_params

  params.require(:billboard).permit(:attr, :attr2, :everything the table has)
  end

end
