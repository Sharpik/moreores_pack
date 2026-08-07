modname = "technic_chromium";

minetest.register_node( ":technic:mineral_chromium", {
	description = "Chromium Ore",
	tiles = { "default_stone.png^technic_mineral_chromium.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
	drop = "technic:chromium_lump",
})

minetest.register_node(":technic:chromium_block", {
	description = "Chromium Block",
	tiles = { "technic_chromium_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craftitem(":technic:chromium_lump", {
	description = "Chromium Lump",
	inventory_image = "technic_chromium_lump.png",
})

minetest.register_craftitem(":technic:chromium_ingot", {
	description = "Chromium Ingot",
	inventory_image = "technic_chromium_ingot.png",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_chromium",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -200,
	y_max = -100,
	noise_params = chromium_params,
	noise_threshold = chromium_threshold,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "technic:mineral_chromium",
	wherein = "default:stone",
	clust_scarcity = 6*6*6,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -200,
	flags = "absheight",
	noise_params = chromium_params,
	noise_threshold = chromium_threshold,
})
