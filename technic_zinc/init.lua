modname = "technic_zinc";

minetest.register_node( ":technic:mineral_zinc", {
	description = "Zinc Ore",
	tiles = { "default_stone.png^technic_mineral_zinc.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
	drop = "technic:zinc_lump",
})

minetest.register_node(":technic:zinc_block", {
	description = "Zinc Block",
	tiles = { "technic_zinc_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default_stone_sounds
})

minetest.register_craftitem(":technic:zinc_lump", {
	description = "Zinc Lump",
	inventory_image = "technic_zinc_lump.png",
})

minetest.register_craftitem(":technic:zinc_ingot", {
	description = "Zinc Ingot",
	inventory_image = "technic_zinc_ingot.png",
})

local lump = "technic:zinc_lump"
local ingot = "technic:zinc_ingot"
local block = "technic:zinc_block"

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
	ore = "technic:mineral_zinc",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size = 7,
	y_min = -32,
	y_max = 2,
	noise_params = zinc_params,
	noise_threshold = zinc_threshold,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_zinc",
	wherein = "default:stone",
	clust_scarcity = 6*6*6,
	clust_num_ores = 4,
	clust_size = 3,
	y_min = -31000,
	y_max = -32,
	flags = "absheight",
	noise_params = zinc_params,
	noise_threshold = zinc_threshold,
})
