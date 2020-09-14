class DonationsController < ApiBaseController

  def index
    comments = Comment.all
    if comments.empty?
      render status: 204
    else
      render json: comments
    end
  end

  def show
    @comment = Comment.find(params[:id])
    if @comment.errors.blank?
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :bad_request
    end
  end

  def create
    @comment = Comment.create(create_comment_params)
    if @comment.errors.blank?
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :bad_request
    end
  end


  def destroy
    @comment = Comment.find(params[:id])
    if @comment.errors.blank?
      @comment.delete
      render status: :ok
    else
      render json: @comment.errors, status: :bad_request
    end
  end

  protected

  def default_comment_fields
    %i[name content donation_id]
  end

  def update_comment_params
    params.permit(
      *default_comment_fields
    )
  end

  def create_comment_params
    params.permit(
      *default_comment_fields
    )
  end
  
end