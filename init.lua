minetest.register_chatcommand("antigravity", {
   params = "<person>",
   description = "Gives that person antigravity",
   privs = {server=true},
   func = function(name, param)
      local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
      player:set_physics_override({
         gravity = -0.1
      })
   end,
})
minetest.register_chatcommand("freeze", {
   params = "<person>",
   description = "Sets speed+jump to 0. Can't move unless teleported or blocks removed under them",
   privs = {server=true},
   func = function(name, param)
      local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
      player:set_physics_override({
         jump = 0,
         speed = 0
      })
   end,
})

minetest.register_chatcommand("jump",{
	params = "<person>",
	description = "Gives that person huge jump boost, usually killing them.",
	privs = {server=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
		player:set_physics_override({
			jump = 1000
		})
	end
})

minetest.register_chatcommand("fast",{
	params = "<person>",
	description = "Gives that person a lot of speed",
	privs = {server=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
		player:set_physics_override({
			speed = 10
		})
	end
})

minetest.register_chatcommand("controls",{
	params = "<person>",
	description = "Gives that person very quirky controls, resulting in a literally uncontrollable character. Use with caution!",
	privs = {server=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
		player:set_physics_override({
			speed = -1.0
		})
	end
})

minetest.register_chatcommand("glide",{
	params = "<person>",
	description = "Anti-fall damage. Slows your descent.",
	privs = {server=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
      minetest.chat_send_player(name, "Target locked...FIRE! Direct hit!")
		player:set_physics_override({
			jump = 0.3,
			gravity = 0.1
		})
	end
})


minetest.register_chatcommand("reset",{
	params = "<person>",
	description = "Resets gravity, eye offset, visual size and whether they are invisible",
	privs = {server=true},
	func = function(name, param)
		local player = minetest.get_player_by_name(param)
      if player == nil then
         player = minetest.get_player_by_name(name)
      end
		player:set_eye_offset({x=0,y=0,z=0},{x=0,y=0,z=0})
		player:set_properties({
			visual_size = {x=1, y=1, z=1}
		})
      minetest.chat_send_player(param, "Your gravity has been reset! FREEDOM!")
		player:set_physics_override({
			speed = 1.0,
			gravity = 1.0,
			jump = 1.0
		})


	end,
})
