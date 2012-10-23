require 'sinatra'
require_relative 'pant_leg'

get '/' do
  erb :pantleg
end

post '/roll_up' do
 
  pant_leg = PantLeg.new(params[:wind_direction], params[:travel_direction], params[:temperature])

  three_params = "#{params[:wind_direction]}
  #{params[:travel_direction]}
  #{params[:temperature]} "

if pant_leg.roll_up? == true
 three_params << "I would recommend rolling your right pant leg up."  

else
  three_params << "You will need to keep both pant legs down due to the cold temperature so I recommend either using a pantleg strap for your right leg or tucking it into your sock."
end
return three_params *ask jesse if this is needed
end

# get '/yes_no' do
#   erb :yes_no
# end

#next steps: 1. make another erb file that displays the text based on the inputs