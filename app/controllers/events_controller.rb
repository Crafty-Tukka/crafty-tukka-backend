class EventsController < ApplicationController
  before_action :check_signed_in_user, only: [:create, :update, :destroy]
  before_action :set_event, only: [:show, :update, :destroy]
  before_action :check_ownership, only: [:update, :destroy]

  # GET /events
  def index
    @events = []

    if (params[:venue])
      Event.find_by_venue(params[:venue]).order(date: :asc).each do |event|
        @events << event.render_event_details
      end
    else
      Event.includes(:venue).order(date: :asc).each do |event|
        @events << event.render_event_details
      end
    # @events = Event.all

    if @events.count == 0
      render json: {error: "Events not found"}
     else
      render json: @events
     end
    end
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def venuecreate
      @event = current_venue.events.create(event_params)

    if @event.save
      render json: @event.render_event_details, status: :created
    else
      print @event.errors
            render json: {error: @event.errors}
    end
  end



  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event.render_event_details
    else
      render json: {error: @event.errors}
    end
  end

  # DELETE /events/1
  def destroy
    if @event.destroy
      render json: {message: "Event successfully deleted"}, status: 200
    else
      render json: {error: @event.errors}
    end
  end

  private
    # set the event using params id
    def set_event
      @event = Event.find(params[:id])
    end

    # check user ownership before they make changes
    def check_ownership
      if !(current_venue.id == @event.venue_id)
          render json: {error: "You are not authorised to do that"}
      end
    end

    # check user ownership before they make changes
    def check_signed_in_user
      if !(current_venue)
          render json: {error: "You need to be signed in to do that"}
      end
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.permit(:id, :name, :date, :start_time, :finish_time, :description, :truck_id, :venue_id, :confirmed)
    end
end