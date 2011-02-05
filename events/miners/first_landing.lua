--[[	
	+ First landing
		- Just a simple message to the player, welcoming him on his first arival.
		- More missions are to be presented in the bar.
		- Mission variable: miner_stat

		- Programmed: Anatolis (feb 2011)
		- Text:	Anatolis (feb 2011)
		
]]--

lang = naev.lang()
if lang == "es" then
else -- default english
   
    title = "First arival"
    text = [["Welcome to our new miningbase %s! My name is <name> I am glad you made it here. As you can see your first mission for us was quite succesfull. However, we are desperate for some other stuff before we are fully opperational. We would be very happy if you could help us out again. If you have time, please visit me at the bar and we have a drink while chatting."

You see <name> walk away and you can't help yourself watching to the extrodenary structure of the spacestation of which you jettisonned the modules only a number of STPs ago.]]
end

function create () 
	-- Upon landing the text is shown.
	tk.msg(title, text:format( player.name() ) )
	var.push( "miner_stat", 2 )
end

