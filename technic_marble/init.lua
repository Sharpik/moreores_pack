modname = "technic_marble";

minetest.register_node( ":technic:marble", {
	description = "Marble",
	tiles = { "technic_marble.png" },
	is_ground_content = true,
	groups = {cracky=3, marble=1},
	sounds = default_stone_sounds,
})

minetest.register_node( ":technic:marble_bricks", {
	description = "Marble Bricks",
	tiles = { "technic_marble_bricks.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
})

if stairs then

	stairs.register_stair_and_slab(
		"technic:marble",
		"technic:marble",
		{cracky = 3},
		{"technic_marble.png"},
		"Marble Stair",
		"Marble Slab",
		default_stone_sounds,
		true
	)

	stairs.register_stair_and_slab(
		"technic:marble_bricks",
		"technic:marble_bricks",
		{cracky = 3},
		{"technic_marble_bricks.png"},
		"Marble Bricks Stair",
		"Marble Bricks Slab",
		default_stone_sounds,
		true
	)
end

minetest.register_ore({
	ore_type = "sheet",
	ore = "technic:marble",
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
