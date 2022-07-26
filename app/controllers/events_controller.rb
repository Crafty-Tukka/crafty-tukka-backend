class EventsController < ApplicationController
  before_action :check_signed_in_user, only: [:create, :update, :destroy]
  before_action :set_event, only: [:show, :update, :destroy]
  before_action :check_ownership, only: [:update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def venuecreate
      @event = current_venue.events.create(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def truckcreate
    @event = current_truck.events.create(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # set the event using params id
    def set_event
      @event = Event.find(params[:id])
    end

    # check user ownership before they make changes
    def check_ownership
      if !(current_venue.id == @event.venue_id) or !(current_truck.id == @event.truck_id)
          render json: {error: "You are not authorised to do that"}
      end
    end

    # check user ownership before they make changes
    def check_signed_in_user
      if !(current_venue) and !(current_truck)
          render json: {error: "You need to be signed in to do that"}
      end
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :start, :finish, :description, :truck_id, :venue_id, :confirmed)
    end
end