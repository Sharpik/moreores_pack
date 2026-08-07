modname = "sharpnet_basalt";

minetest.register_node( ":sharpnet:basalt", {
	description = "Basalt",
	tiles = { "sharpnet_basalt.png" },
	is_ground_content = true,
	groups = {cracky=3, marble=1},
	sounds = default_stone_sounds,
})

minetest.register_node( ":sharpnet:basalt_cobble", {
	description = "Basalt Cobblestone",
	tiles = { "sharpnet_basalt_cobble.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
})

if stairs then

	stairs.register_stair_and_slab(
		"sharpnet:basalt",
		"sharpnet:basalt",
		{cracky = 3},
		{"sharpnet_basalt.png"},
		"Basalt Stair",
		"Basalt Slab",
		default_stone_sounds,
		true
	)

	stairs.register_stair_and_slab(
		"sharpnet:basalt_cobble",
		"sharpnet:basalt_cobble",
		{cracky = 3},
		{"sharpnet_basalt_cobble.png"},
		"Basalt Cobblestone Stair",
		"Basalt Cobblestone Slab",
		default_stone_sounds,
		true
	)
end

minetest.register_ore({
	ore_type = "sheet",
	ore = "sharpnet:basalt",
	wherein = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -50,
	noise_threshold = 0.4,
	noise_params = {
		offset = 0, scale = 15, spread = {x = 150, y = 150, z = 150},
		seed = 23, octaves = 3, persist = 0.70
	}
})
