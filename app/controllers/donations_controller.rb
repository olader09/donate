class DonationsController < ApiBaseController

  def index
    donations = donation.all
    if donations.empty?
      render status: 204
    else
      render json: donations
    end
  end

  def show
    @donation = donation.find(params[:id])
    if @donation.errors.blank?
      render json: @donation, status: :ok
    else
      render json: @donation.errors, status: :bad_request
    end
  end

  def create
    @donation = donation.create(create_donation_params)
    if @donation.errors.blank?
      render status: :ok
    else
      render json: @donation.errors, status: :bad_request
    end
  end

  def update
    @donation = donation.find(params[:id])
    if @donation.errors.blank?
      @donation.update(update_donation_params)
      render status: :ok
    else
      render json: @donation.errors, status: :bad_request
    end
  end

  def destroy
    @donation = donation.find(params[:id])
    if @donation.errors.blank?
      @donation.delete
      render status: :ok
    else
      render json: @donation.errors, status: :bad_request
    end
  end

  protected

  def default_donation_fields
    %i[name sum author aim type description date_close picture]
  end

  def update_donation_params
    params.permit(
      *default_donation_fields
    )
  end

  def create_donation_params
    params.permit(
      *default_donation_fields
    )
  end
  
end
