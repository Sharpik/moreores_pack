modname = "technic_uranium";

minetest.register_node( ":technic:mineral_uranium", {
	description = "Uranium Ore",
	tiles = { "default_stone.png^technic_mineral_uranium.png" },
	is_ground_content = true,
	groups = {cracky=3, radioactive=1},
	sounds = default_stone_sounds,
	drop = "technic:uranium_lump",
})

minetest.register_node(":technic:uranium_block", {
	description = "Uranium Block",
	tiles = { "technic_uranium_block.png" },
	is_ground_content = true,
	groups = {uranium_block=1, cracky=1, level=2, radioactive=2},
	sounds = default_stone_sounds
})

minetest.register_craftitem(":technic:uranium_lump", {
	description = "Uranium Lump",
	inventory_image = "technic_uranium_lump.png",
})
minetest.register_alias("technic:uranium", "technic:uranium_lump")

minetest.register_craftitem(":technic:uranium_ingot", {
	description = "Uranium Ingot",
	inventory_image = "technic_uranium_ingot.png",
	groups = {uranium_ingot=1},
})

local lump = "technic:uranium_lump"
local ingot = "technic:uranium_ingot"
local block = "technic:uranium_block"

minetest.register_craft({
	type = 'cooking',
	recipe = lump,
	output = ingot,
})

minetest.register_craft( {
 	output = block.." 1",
 	recipe = {
 		{ ingot, ingot, ingot },
 		{ ingot, ingot, ingot },
		{ ingot, ingot, ingot }
 	}
})

minetest.register_craft( {
 	output = ingot.." 9",
 	type = "shapeless",
 	recipe = {
 		block
 	},
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_uranium",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 4,
	clust_size = 3,
	y_min = -300,
	y_max = -80,
	noise_params = uranium_params,
	noise_threshold = uranium_threshold,
})
