highway_vehicles = {
	car: {
		model: 'Honda Civic',
		engine_info: {
			cyl: 4,
			horses: 220,
			boost: "turbo",
		},
		styles: ["Si", "Ex", "DX"]
	},
	truck: {
		model: 'Silverado',
		engine_info: {
			cyl: 8,
			horses: 450,
			boost: "supercharger",
		},
		styles: ["1500", "2500", "3500"]
	},
	bikes: {
		model: 'Kawasaki Ninja',
		engine_info: {
			cyl: 4,
			horses: 310,
			boost: "turbo",
		},
		styles: ["H2", "ZX-14", "1000"]		
	}
}

puts highway_vehicles[:car][:styles][0]
p highway_vehicles[:bikes][:engine_info][:cyl] = 2
puts highway_vehicles[:bikes][:engine_info]
p highway_vehicles[:car][:styles].push("CX")
