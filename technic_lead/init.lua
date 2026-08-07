modname = "technic_lead";

minetest.register_node( ":technic:mineral_lead", {
	description = "Lead Ore",
	tiles = { "default_stone.png^technic_mineral_lead.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
	drop = "technic:lead_lump",
})

minetest.register_node(":technic:lead_block", {
	description = "Lead Block",
	tiles = { "technic_lead_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default_stone_sounds
})

minetest.register_craftitem(":technic:lead_lump", {
	description = "Lead Lump",
	inventory_image = "technic_lead_lump.png",
})

minetest.register_craftitem(":technic:lead_ingot", {
	description = "Lead Ingot",
	inventory_image = "technic_lead_ingot.png",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_lead",
	wherein = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 5,
	clust_size = 3,
	y_min = -16,
	y_max = 16,
	noise_params = lead_params,
	noise_threshold = lead_threshold,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_lead",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 5,
	clust_size = 3,
	y_min = -128,
	y_max = -16,
	noise_params = lead_params,
	noise_threshold = lead_threshold,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_lead",
	wherein = "default:stone",
	clust_scarcity = 6*6*6,
	clust_num_ores = 5,
	clust_size = 3,
	y_min = -31000,
	y_max = -128,
	flags = "absheight",
	noise_params = lead_params,
	noise_threshold = lead_threshold,
})
