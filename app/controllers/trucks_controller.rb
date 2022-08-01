class TrucksController < ApplicationController
    before_action :authenticate_truck, only: [:update, :destroy]
    before_action :set_truck, only: [:show, :update, :destroy]
    before_action :set_events, only: [:truck_events, :pending_truck_events]
    before_action :check_ownership, only: [:update, :destroy]

    # GET /foodtrucks
    def index
        @trucks = Truck.all.with_attached_picture

        render json: @trucks.map { |truck|
            truck.as_json.merge({ picture_url: url_for(truck.picture)})
        }
    end

    # GET /foodtrucks/1
    def show
        render json: @truck
    end

    # GET /events/foodtrucks/1
    def truck_events
        @events = @events.select { |event| event.confirmed? }
        render json: @events
    end

    # GET /events/foodtrucks/1/pending
    def pending_truck_events
        @events = @events.select { |event| !event.confirmed? }
        render json: @events
    end

    # POST /foodtrucks
    def create
        @truck = Truck.new(truck_params)

        if @truck.save
            auth_token = Knock::AuthToken.new payload: {sub: @truck.id}
            render json: {id: @truck.id, email: @truck.email, jwt: auth_token.token}, status: :created
        else
            render json: @truck.errors, status: :unprocessable_entity
        end
    end

    # POST /auth/foodtrucks/signin
    def sign_in
        @truck = Truck.find_by_email(params[:email])
        if @truck && @truck.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub: @truck.id}
            render json: {id: @truck.id, email: @truck.email, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Invalid email or password"}
        end
    end    

    # PUT /foodtrucks/1
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
        if !(current_truck.id == @truck.id)
            render json: {error: "You are not authorised to do that"}
        end
    end

    # Only allow a list of trusted parameters through.
    def truck_params
        params.permit(:id, :name, :email, :website, :facebook, :password, :password_confirmation, :category, :description, :mobile, :google_maps, :picture, :picture_url)
    end
end
