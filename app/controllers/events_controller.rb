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

    def edit
        @event = Event.find(params[:id])
    end


    def update
        @event = Event.find(params[:id])
        @event.update!(event_params)
        redirect_to @event
        
    end
    
    def destroy
        @event.destroy
        redirect_to @event
    end
    
    
    private

    def event_params
        params.require(:event).permit(:name, :description , :start_time, :end_it, :venue,:directions)
    end
end

