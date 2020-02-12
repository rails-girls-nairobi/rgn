class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create

        @event = Event.create(params[:event_params])
        
        if @event.save

            redirect_to @event
            
        else
        
            render 'new'
            
        end
        
    end

    def show
        @event = Event.find(params[:id])
    end



    def update

    end
    
    
    private

    def event_params
        params.require(:event).permit(:name, :description , :start_time, :end_it, :venue,:directions)
    end
end

