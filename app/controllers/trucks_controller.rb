class TrucksController < ApplicationController
    # before_action :authenticate_user, only: [:create, :update, :destroy]
    before_action :set_truck, only: [:show, :update, :destroy]
    before_action :set_events, only: [:truck_events, :pending_truck_events]
    # before_action :check_ownership, only: [:update, :destroy]

    # GET /trucks
    def index
        @trucks = Truck.all

        render json: @trucks
    end

    # GET /trucks/1
    def show
        render json: @truck
    end

    # GET /events/foodtruck/1
    def truck_events
        @events = @events.select { |event| event.confirmed? }
        render json: @events
    end

    # GET /events/foodtruck/1/pending
    def pending_truck_events
        @events = @events.select { |event| !event.confirmed? }
        render json: @events
    end

    # POST /trucks
    def create
        @truck = Truck.new(truck_params)

        if @truck.save
            auth_token = Knock::AuthToken.new payload: {sub: @truck.id}
            render json: {email: @truck.email, jwt: auth_token.token}, status: :created#, location: @truck
        else
            render json: @truck.errors, status: :unprocessable_entity
        end
    end

    # POST /auth/foodtruck/signin
    def sign_in
        @truck = Truck.find_by_email(params[:email])
        if @truck && @truck.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @truck.id}
            render json: {email: @truck.email, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Invalid email or password"}
        end
    end    

    # PUT /foodtruck/1
    def update
        if @truck.update(truck_params)
            render json: @truck
        else
            render json: @truck.errors, status: :unprocessable_entity
        end
    end

    # DELETE /foodtrucks/1
    def destroy
        @truck.destroy
    end

    private
    # set the venue using params id
    def set_truck
        @truck = Truck.find(params[:id])
    end

    # set the events for the truck using params id
    def set_events
        @truck = Truck.find(params[:id])
        @events = @truck.events
    end

    # check user ownership before they make changes
    def check_ownership
        if !(current_user.id == @truck.id)
            render json: {error: "You are not authorised to do that"}
        end
    end

    # Only allow a list of trusted parameters through.
    def truck_params
        params.require(:truck).permit(:name, :email, :website, :facebook, :password, :password_confirmation, :category, :description, :mobile, :google_maps, :picture)
    end
end
