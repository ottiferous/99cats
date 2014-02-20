class CatRentalRequestsController < ApplicationController

  def create
    @rental = CatRentalRequest.new(rental_params)
    @rental.cat_id = params[:cat_id]
    if @rental.save
      redirect_to cat_url(@rental.cat_id)
    else
      flash.now[:errors] = @errors.full_message
      redirect_to cat_url(@rental.cat_id)
    end
  end

  private

  def rental_params
    params.require(:cat_rental_request).permit(:start_date, :end_date, :cat_id)
  end


end
