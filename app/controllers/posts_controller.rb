class PostsController < ApiBaseController
  def index
    posts = Post.all
    if posts.empty?
      render status: 204
    else
      render json: posts
    end
  end

  def show
    @post = Post.find(params[:id])
    if @post.errors.blank?
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :bad_request
    end
  end

  def create
    @post = Post.create(create_post_params)
    if @post.errors.blank?
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :bad_request
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.errors.blank?
      @post.update(update_post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :bad_request
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.errors.blank?
      @post.delete
      render status: :ok
    else
      render json: @post.errors, status: :bad_request
    end
  end

  protected

  def default_post_fields
    %i[content latitude longitude subject mood author_name author_avatar count_likes count_comments count_reposts ]
  end

  def update_post_params
    params.permit(
      *default_post_fields
    )
  end

  def create_post_params
    params.permit(
      *default_post_fields
    )
  end  
end
