--
-- Pegmatite vein
--

local CommonRarity=45

minetest.register_node( "rocks:pegmatite", {
	description = S("Pegmatite"),
	tiles = { "rocks_Pegmatite.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})

-- ores have to be redefined for pegmatite background

-- pegmatites are only 1 kind
rocks.register_vein("rocks:pegmatite",{
  wherein={ "rocks:granite" },
  miny=-160, maxy=20,
  radius={ average=18, amplitude=0.3, frequency=16 },
  density=80, rarity=CommonRarity,
  ores={
  }
 })
