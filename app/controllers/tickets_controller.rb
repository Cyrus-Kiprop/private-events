class TicketsController < ApplicationController
  def create
    new_ticket = current_user.tickets.build(event_id: params[:id])
    if new_ticket.save
      redirect_to events_path, notice: 'Successfully added the event'
    else
      flash.now[:alert] = 'Server Error'
      redirect_to events_path
    end
  end

  def destroy
    redirect_back fallback_location: users_path if current_user.unregister(params[:id])
  end
end
