class PicturesController < ApiBaseController

  def index

  end

  def show
    @picture = Picture.find(params[:id])
    if @picture.errors.blank?
      render json: @picture, status: :ok
    else
      render json: @picture.errors, status: :bad_request
    end
  end

  def create
    @picture = Picture.create(create_picture_params)
    if @picture.errors.blank?
      render json: @picture, status: :ok
    else
      render json: @picture.errors, status: :bad_request
    end
  end

  def update
    
  end

  def destroy
    
  end

  protected

  def default_picture_fields
    %i[picture]
  end

  def update_picture_params
    params.permit(
      *default_picture_fields
    )
  end

  def create_picture_params
    params.permit(
      *default_picture_fields
    )
  end
  
end
