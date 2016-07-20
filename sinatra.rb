require 'bundler/setup'
require 'sinatra/base'
require 'pry'




class Iloveny < Sinatra::Base

  get "/" do
    "Hello Children"
  end

  get "/:name" do
    "#{params["name"]}, do you have any more gum?"
  end

  get "/lorem/:name" do
    lorem_name = params["name"]
    if  lorem_name == "standard"

    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  elsif lorem_name == "cat"
    "Who's the baby scream at teh bath. Fall asleep on the washing machine intently sniff hand paw at beetle and eat it before it gets away and fall asleep on the washing machine my left donut is missing, as is my right for chase mice white cat sleeps on a black shirt. Stare at ceiling light cats go for world domination, but leave fur on owners clothes sleep on keyboard hate dog, for inspect anything brought into the house. Stare at ceiling scratch leg; meow for can opener to feed me lay on arms while you're using the keyboard. Why must they do that. Wake up human for food at 4am peer out window, chatter at birds, lure them to mouth burrow under covers chase laser. Sweet beast leave fur on owners clothes jump launch to pounce upon little yarn mouse, bare fangs at toy run hide in litter box until treats are fed and if it fits, i sits, scratch the furniture. Kitty scratches couch bad kitty i like big cats and i can not lie or knock over christmas tree dream about hunting birds favor packaging over toy. Roll on the floor purring your whiskers off plan steps for world domination but stare at ceiling sun bathe, so stares at human while pushing stuff off a table. Paw at your fat belly loves cheeseburgers sleep nap yet plan steps for world domination, so love to play with owner's hair tie, so pelt around the house and up and down stairs chasing phantoms, drink water out of the faucet. Hunt by meowing loudly at 5am next to human slave food dispenser. Kitty power! who's the baby, and paw at beetle and eat it before it gets away caticus cuteicus, for scratch at the door then walk away. Play riveting piece on synthesizer keyboard chew foot claw drapes, yet loves cheeseburgers damn that dog stare out the window but meow for food, then when human fills food dish, take a few bites of food and continue meowing. Peer out window, chatter at birds, lure them to mouth. Lick the other cats. Lick plastic bags climb a tree, wait for a fireman jump to fireman then scratch his face then cats take over the world spit up on light gray carpet instead of adjacent linoleum, chase dog then run away."
  else
    "In prison, you just have to close your eyes and take it, but here you have to close your eyes and give it. I'm gonna build me an airport, put my name on it. Why, Michael? So you can fly away from your feelings? Tobias Fünke costume. I'm gonna go get sexy. I know what an erection feels like, Michael. The guy runs a prison, he can have any piece of ass he wants."
  end
  end


  run! if app_file == $0
end
