class PodcastsController < ApiBaseController
  def index
    podcasts = Podcast.all
    if podcasts.empty?
      render status: 204
    else
      render json: podcasts
    end
  end

  def show
    @podcast = Podcast.find(params[:id])
    if @podcast.errors.blank?
      render json: @podcast, status: :ok
    else
      render json: @podcast.errors, status: :bad_request
    end
  end

  def create
    @podcast = Podcast.create(create_podcast_params)
    if @podcast.errors.blank?
      render json: @podcast, status: :ok
    else
      render json: @podcast.errors, status: :bad_request
    end
  end

  def update
    @podcast = Podcast.find(params[:id])
    if @podcast.errors.blank?
      @podcast.update(update_podcast_params)
      render status: :ok
    else
      render json: @podcast.errors, status: :bad_request
    end
  end

  def destroy
    @podcast = Podcast.find(params[:id])
    if @podcast.errors.blank?
      @podcast.delete
      render status: :ok
    else
      render json: @podcast.errors, status: :bad_request
    end
  end

  protected

  def default_podcast_fields
    %i[name description audio timecodes picture author]
  end

  def update_podcast_params
    params.permit(
      *default_podcast_fields
    )
  end

  def create_podcast_params
    params.permit(
      *default_podcast_fields
    )
  end  
end
