modname = "technic_sulfur";

minetest.register_node( ":technic:mineral_sulfur", {
	description = "Sulfur Ore",
	tiles = { "default_stone.png^technic_mineral_sulfur.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default_stone_sounds,
	drop = "technic:sulfur_lump",
})

minetest.register_craftitem(":technic:sulfur_lump", {
	description = "Sulfur Lump",
	inventory_image = "technic_sulfur_lump.png",
})

-- Sulfur
local sulfur_buf = {}
local sulfur_noise

minetest.register_on_generated(function(minp, maxp)
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local a = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
	vm:get_data(sulfur_buf)
	local pr = PseudoRandom(17 * minp.x + 42 * minp.y + 101 * minp.z)
	sulfur_noise = sulfur_noise or minetest.get_perlin(9876, 3, 0.5, 100)

	local c_lava = minetest.get_content_id("default:lava_source")
	local c_lava_flowing = minetest.get_content_id("default:lava_flowing")
	local c_stone = minetest.get_content_id("default:stone")
	local c_sulfur = minetest.get_content_id("technic:mineral_sulfur")

	local grid_size = 5
	for x = minp.x + math.floor(grid_size / 2), maxp.x, grid_size do
	for y = minp.y + math.floor(grid_size / 2), maxp.y, grid_size do
	for z = minp.z + math.floor(grid_size / 2), maxp.z, grid_size do
		local c = sulfur_buf[a:index(x, y, z)]
		if (c == c_lava or c == c_lava_flowing)
		and sulfur_noise:get3d({x = x, y = z, z = z}) >= 0.4 then
			for i in a:iter(
				math.max(minp.x, x - grid_size),
				math.max(minp.y, y - grid_size),
				math.max(minp.z, z - grid_size),
				math.min(maxp.x, x + grid_size),
				math.min(maxp.y, y + grid_size),
				math.min(maxp.z, z + grid_size)
			) do
				if sulfur_buf[i] == c_stone and pr:next(1, 10) <= 7 then
					sulfur_buf[i] = c_sulfur
				end
			end
		end
	end
	end
	end

	vm:set_data(sulfur_buf)
	vm:write_to_map(sulfur_buf)
end)
