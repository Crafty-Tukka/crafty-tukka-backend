class VenuesController < ApplicationController
    before_action :authenticate_venue, only: [:update, :destroy]
    before_action :set_venue, only: [:show, :update, :destroy]
    before_action :set_events, only: [:venue_events, :pending_venue_events]
    before_action :check_ownership, only: [:update, :destroy]

    # GET /venues
    def index
        @venues = Venue.all

        render json: @venues

    end

    # GET /venues/1
    def show
        render json: @venue
    end

    # GET /events/venues/1
    def venue_events
        @events = @events.select { |event| event.confirmed? }
        render json: @events
    end

    # GET /events/venues/1/pending
    def pending_venue_events
        @events = @events.select { |event| !event.confirmed? }
        render json: @events
    end

    # POST /auth/venues/signup
    def create
        print venue_params
        @venue = Venue.new(venue_params)

        if @venue.save
            auth_token = Knock::AuthToken.new payload: {sub: @venue.id}
            render json: {id: @venue.id, email: @venue.email, jwt: auth_token.token}, status: :created
        else
            render json: @venue.errors, status: :unprocessable_entity
        end
    end

    # POST /auth/venues/signin
    def sign_in
        @venue = Venue.find_by_email(params[:email])
        if @venue && @venue.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @venue.id}
            render json: {id: @venue.id, email: @venue.email, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Invalid email or password"}
        end
    end
    

    # PUT /auth/venues/1
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
    # set the venue using params id
    def set_venue
        @venue = Venue.find(params[:id])
    end

    # set the events for the venue using params id
    def set_events
        @venue = Venue.find(params[:id])
        @events = @venue.events
    end

    # check user ownership before they make changes
    def check_ownership
        if !(current_venue) or !(current_venue.id == @venue.id)
            render json: {error: "You are not authorised to do that"}
        end
    end

    # Only allow a list of trusted parameters through.
    def venue_params
        params.permit(:id, :name, :email, :website, :facebook, :password, :password_confirmation, :picture, :description, :mobile, :google_maps, :address, :lat, :lng)
    end
end