class VenuesController < ApplicationController
    before_action :set_venue, only: [:show, :update, :destroy]
    before_action :set_events, only: [:venue_events, :pending_venue_events]

    # GET /venues
    def index
        @venues = Venue.all

        render json: @venues
    end

    # GET /venues/1
    def show
        render json: @venue
    end

    # GET /events/venue/1
    def venue_events
        @events = @events.select { |event| event.confirmed? }
        render json: @events
    end

    # GET /events/venue/1/pending
    def pending_venue_events
        @events = @events.select { |event| !event.confirmed? }
        render json: @events
    end

    # POST /venues
    def create
        @venue = Venue.new(venue_params)

        if @venue.save
        render json: @venue, status: :created, location: @venue
        else
        render json: @venue.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /venues/1
    def update
        if @venue.update(venue_params)
        render json: @venue
        else
        render json: @venue.errors, status: :unprocessable_entity
        end
    end

    # DELETE /venues/1
    def destroy
        @venue.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
        @venue = Venue.find(params[:id])
    end

    def set_events
        @venue = Venue.find(params[:id])
        @events = @venue.events
    end

    # Only allow a list of trusted parameters through.
    def venue_params
        params.require(:venue).permit(:name, :email, :website, :facebook, :password_digest, :description, :mobile, :google_maps)
    end
end
