class TrucksController < ApplicationController
    before_action :set_truck, only: [:show, :update, :destroy]
    before_action :set_events, only: [:truck_events, :pending_truck_events]

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
        render json: @truck, status: :created, location: @truck
    else
        render json: @truck.errors, status: :unprocessable_entity
    end
    end

    # PATCH/PUT /trucks/1
    def update
    if @truck.update(truck_params)
        render json: @truck
    else
        render json: @truck.errors, status: :unprocessable_entity
    end
    end

    # DELETE /trucks/1
    def destroy
    @truck.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
        @truck = Truck.find(params[:id])
    end

    def set_events
        @truck = Truck.find(params[:id])
        @events = @truck.events
    end

    # Only allow a list of trusted parameters through.
    def truck_params
        params.require(:truck).permit(:name, :email, :website, :facebook, :password_digest, :category, :description, :mobile, :google_maps)
    end
end
