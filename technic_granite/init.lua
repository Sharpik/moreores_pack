modname = "technic_granite";

minetest.register_node( ":technic:granite", {
	description = "Granite",
	tiles = { "technic_granite.png" },
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default_stone_sounds,
})

minetest.register_ore({
	ore_type = "sheet",
	ore = "technic:granite",
	wherein = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size = 4,
	y_min = -31000,
	y_max = -150,
	noise_threshold = 0.4,
	noise_params = {
		offset = 0, scale = 15, spread = {x = 130, y = 130, z = 130},
		seed = 24, octaves = 3, persist = 0.70
	}
})
