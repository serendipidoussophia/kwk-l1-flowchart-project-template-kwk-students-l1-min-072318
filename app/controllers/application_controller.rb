class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

# get '/' do
#   erb: 'index.html'
# end

# get '/statequizresults' do
#   erb :pet_shelters_nearby
# end

get '/nearby_shelters' do
  erb :'nearbyshelters.html'
end
 
# post '/pet_shelters_nearby' do
#   @rec = params[:state]
#   erb :'stateresults.html' 
   
  post '/nearby_shelters' do
     @input = params[:state]
     erb :'nearbyshelters.html' 
 
   
# def state_chooser(state)
  if @pet=="dog"
      @reply = "You live in Alabama. A good pet shelter in your state is the Montgomery Humane Society."
  elsif @pet=="cat"
    @reply = "You live in Alaska. A good pet shelter in your state is the Gastineau Humane Society."
  elsif @pet=="bird"
    @reply = "You live in Arizona. A good pet shelter in your state is the Halo Animal Rescue."
  elsif @pet=="rodent"
    @reply = "You live in Arkansas. A good pet shelter in your state is the Humane Society of Pulaski County."
  elsif @pet=="small mammal"
end

if @pet=="dog"
  if @money_dog<1000
    @reply="The average dog costs 1000 dollars in the first year. I'm sorry, but you won't be able to afford your dog. Thanks for using this quiz, otherwise you and your pet would not have been comfortable. Consider fostering a dog instead, or try another pet."
    elsif @money_dog>=1000
      @reply="The average dog costs 1000 dollars in the first year. Congrats, you can afford your dog! Thanks for using this quiz to make sure you and your pet will be comfortable."
    else
      puts "Sorry, we don't recognize that amount of money. Make sure you didn't put a dollar sign or any punctuation. Try again."
  end
  elsif @pet=="cat"
    puts "How much money are you able to spend on your cat per year? Don't put a dollar sign, just the number."
    @money_cat=gets.chomp.to_i
    if @money_cat<900
      @reply="The average cat costs 900 dollars in the first year. I'm sorry, but you won't be able to afford your cat. Thanks for using this quiz, otherwise you and your pet would not have been comfortable. Consider fostering a cat instead, or try another pet."
      elsif @money_cat>=900
        @reply="The average cat costs 900 dollars in the first year. Congrats, you can afford your cat! Thanks for using this quiz to make sure you and your pet will be comfortable."
    end
  elsif @pet=="bird"
    puts "How much money are you able to spend on your bird per year? Don't put a dollar sign, just the number."
    @money_bird=gets.chomp.to_i
    if @money_bird<300
      @reply="The average bird costs 300 dollars in the first year. I'm sorry, but you won't be able to afford your bird. Thanks for using this quiz, otherwise you and your pet would not have been comfortable. Consider fostering a pet instead, or try another pet."
      elsif @money_bird>=300
          @reply="The average bird costs 300 dollars in the first year. Congrats, you can afford your bird! Thanks for using this quiz to make sure you and your pet will be comfortable."
    end
  elsif @pet=="rodent"
    puts "How much money are you able to spend on your rodent per year? Don't put a dollar sign, just the number."
    @money_rodent=gets.chomp.to_i
    if @money_rodent<300
      @reply="The average rodent costs 300 dollars in the first year. I'm sorry, but you won't be able to afford your rodent. Thanks for using this quiz, otherwise you and your pet would not have been comfortable. Consider fostering a pet instead, or try another pet."
      elsif @money_rodent>=300
          @reply="The average rodent costs 300 dollars in the first year. Congrats, you can afford your rodent! Thanks for using this quiz to make sure you and your pet will be comfortable."
    end
  elsif @pet=="small mammal"
    puts "How much money are you able to spend on your small mammal per year? Don't put a dollar sign, just the number."
    @money_small_mammal=gets.chomp.to_i
    if @money_small_mammal<150
      @reply="The average small mammal costs 150 dollars in the first year. I'm sorry, but you won't be able to afford your small mammal. Thanks for using this quiz, otherwise you and your pet would not have been comfortable. Consider fostering a pet instead, or try another pet."
      elsif @money_small_mammal>=150
          @reply="The average small mammal costs 150 dollars in the first year. Congrats, you can afford your small mammal! Thanks for using this quiz to make sure you and your pet will be comfortable."
    end
else
  puts "Sorry, that's not a choice. The options are dog, cat, bird, rodent, and small mammal. Don't put any punctuation. Try again."
end
