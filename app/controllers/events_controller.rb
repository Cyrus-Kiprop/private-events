class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authorize, except: %i[index]

  def index
    @upcoming_events = Event.upcoming
    @previous_events = Event.previous
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.organized_events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start, :end)
  end
end
