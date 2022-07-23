class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    if !params.values.include?('') && params.values.length >= 9
      if params[:departure_id] == params[:arrival_id]
        flash[:notice] = 'Arrival and departure airports should be different'
      else
        @selected_date = DateTime.new(params[:year].to_i, params[:month].to_i, params[:day].to_i)
        @time_offset = (DateTime.now.to_i - @flights.first.created_at.to_i) / 86_400
        @available_tickets = Flight.all.where('departure_airport_id = ? AND arrival_airport_id = ? AND departure_datetime >= ?',
                                              params[:departure_id],  params[:arrival_id], @selected_date - @time_offset.days).order('departure_datetime').limit(8)
      end
    end
  end
end
