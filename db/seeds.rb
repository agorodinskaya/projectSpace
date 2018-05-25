Moon.create!([
  {name: "Moon", description: "The fifth largest moon in the solar system, Earth's moon is the only place beyond Earth where humans have set foot. People visited the Moon 24 times.", orbit: nil, diameter: 0.27, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/1920px-FullMoon2010.jpg", planet_id: 53, mean_radius: nil, surface_gravity: 1.624, surface_area: 37937.0},
  {name: "Deimos", description: "Deimos is the smaller of Mars' two moons. Being only 9 by 7 by 6.8 miles in size (15 by 12 by 11 kilometers), Deimos whirls around Mars every 30 hours.\n", orbit: nil, diameter: 0.001, mass: nil, temperature: nil, travel_time: nil, image_url: "https://solarsystem.nasa.gov/system/stellar_items/list_view_images/8_deimos_480x320_moons.jpg", planet_id: 54, mean_radius: nil, surface_gravity: 0.003, surface_area: 0.0},
  {name: "Phobos", description: "Phobos, gouged and nearly shattered by a giant impact crater and beaten by thousands of meteorite impacts, is on a collision course with Mars.", orbit: nil, diameter: 0.0, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/221831main_PIA10368.png/520px-221831main_PIA10368.png", planet_id: 54, mean_radius: nil, surface_gravity: 0.006, surface_area: 0.0},
  {name: "Europa", description: "Beneath the icy surface of Jupiter’s moon Europa is perhaps the most promising place to look for present-day environments suitable for life.", orbit: nil, diameter: 0.25, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Europa-moon.jpg/520px-Europa-moon.jpg", planet_id: 55, mean_radius: nil, surface_gravity: 1.315, surface_area: 30613.0},
  {name: "Ganymede", description: "Ganymede is the largest moon in our solar system and the only moon with its own magnetic field.", orbit: nil, diameter: 0.4, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/7/7f/Ganymede-moon.jpg", planet_id: 55, mean_radius: nil, surface_gravity: 1.428, surface_area: 86999.0},
  {name: "Calisto", description: "Callisto is the third largest moon in our solar system and is almost the size of Mercury.", orbit: nil, diameter: 0.38, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Callisto2.jpg/520px-Callisto2.jpg", planet_id: 55, mean_radius: nil, surface_gravity: 1.236, surface_area: 73005.0},
  {name: "Io", description: "Jupiter's moon Io is the most volcanically active world in the Solar System, with hundreds of volcanoes, some erupting lava fountains dozens of miles (or kilometers) high.", orbit: nil, diameter: 0.28, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Io_highest_resolution_true_color.jpg/520px-Io_highest_resolution_true_color.jpg", planet_id: 55, mean_radius: nil, surface_gravity: 1.796, surface_area: 41698.0},
  {name: "Phoebe", description: "Phoebe was discovered August 1898 by American astronomer William Pickering.", orbit: nil, diameter: 0.02, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/3/32/Phoebe_cassini.jpg", planet_id: 56, mean_radius: nil, surface_gravity: 0.049, surface_area: 142.0},
  {name: "Oberon", description: "Oberon is the second largest moon of Uranus. Discovered in 1787, little was known about this moon until Voyager 2 passed it during its flyby of Uranus in January 1986.", orbit: nil, diameter: 0.12, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/0/09/Voyager_2_picture_of_Oberon.jpg", planet_id: 57, mean_radius: nil, surface_gravity: 0.332, surface_area: 7285.0},
  {name: "Triton", description: "Triton was discovered on Oct. 10, 1846 by British astronomer William Lassell, just 17 days after Neptune itself was discovered.", orbit: nil, diameter: 0.2, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c2/Triton_-_August_25_1989_%2817608829504%29.jpg", planet_id: 58, mean_radius: nil, surface_gravity: 0.779, surface_area: 23017.0}
])
Planet.create!([
  {name: "Mercury", description: "Mercury is the smallest and innermost planet in the Solar System. ", orbit: 88.0, diameter: 0.3, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/1920px-Mercury_in_color_-_Prockter07-edit1.jpg", region_id: 26, mean_radius: nil, surface_gravity: 3.7, surface_area: 74797.0},
  {name: "Venus", description: "Venus is the second planet from the Sun, orbiting it every 224.7 Earth days (Venus year).", orbit: 225.0, diameter: 0.9, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg", region_id: 26, mean_radius: nil, surface_gravity: 8.87, surface_area: 460234.0},
  {name: "Earth", description: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life.", orbit: 365.0, diameter: 1.0, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/1920px-The_Earth_seen_from_Apollo_17.jpg", region_id: 26, mean_radius: nil, surface_gravity: 9.80665, surface_area: 510064.0},
  {name: "Mars", description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.", orbit: 687.0, diameter: 0.5, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/550px-OSIRIS_Mars_true_color.jpg", region_id: 26, mean_radius: nil, surface_gravity: 3.71, surface_area: 143371.0},
  {name: "Jupiter", description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System.", orbit: 4333.0, diameter: 11.0, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg", region_id: 27, mean_radius: nil, surface_gravity: 24.79, surface_area: 61418738.0},
  {name: "Saturn", description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. ", orbit: 10759.0, diameter: 9.1, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/2880px-Saturn_during_Equinox.jpg", region_id: 27, mean_radius: nil, surface_gravity: 10.4, surface_area: 42612133.0},
  {name: "Uranus", description: "Uranus is the seventh planet from the Sun.", orbit: 30687.0, diameter: 4.0, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg", region_id: 27, mean_radius: nil, surface_gravity: 8.87, surface_area: 8083080.0},
  {name: "Neptune", description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System.", orbit: 60190.0, diameter: 3.9, mass: nil, temperature: nil, travel_time: nil, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/1920px-Neptune_Full.jpg", region_id: 27, mean_radius: nil, surface_gravity: 11.15, surface_area: 7618272.0}
])
Question.create!([
  {title: "Roundness", body: "Is Earth round?", planet_id: 53, user_id: 23, moon_id: nil}
])
Region.create!([
  {name: "Inner Solar System", description: "The inner Solar System is the region comprising the terrestrial planets and the asteroid belt.", image_url: "https://upload.wikimedia.org/wikipedia/commons/8/8b/Telluric_planets_size_comparison.jpg"},
  {name: "Outer Solar System", description: "The outer region of the Solar System is home to the giant planets and their large moons.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Gas_giants_in_the_solar_system.jpg/1920px-Gas_giants_in_the_solar_system.jpg"},
  {name: "Trans-Neptunian region", description: "Beyond the orbit of Neptune lies the area of the \"trans-Neptunian region\", with the doughnut-shaped Kuiper belt, home of Pluto and several other dwarf planets, and an overlapping disc of scattered objects, which is tilted toward the plane of the Solar System and reaches much further out than the Kuiper belt.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/EightTNOs.png/2560px-EightTNOs.png"},
  {name: "Farthest regions", description: "The point at which the Solar System ends and interstellar space begins is not precisely defined because its outer boundaries are shaped by two separate forces: the solar wind and the Sun's gravity.", image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Solarmap.png"}
])
SpaceStation.create!([
  {name: "Ruby", image_url: nil, latitude: -33.8713221, longitude: 151.2046436, address: "1 Market St, Sydney"},
  {name: "Ruby", image_url: nil, latitude: -33.858481, longitude: 151.153243, address: "1 Market St, Sydney"},
  {name: "Lessie", image_url: nil, latitude: -36.866264, longitude: 174.751473, address: "23 Alexander St, Coogee"}
])
User.create!([
  {email: "test@create.com", username: "test", password_digest: "$2a$10$3ecPLmAHxqmdWP0xXCbaTuobuTT/kzwk1.jtF.XBteIi/Ps6T2Ume", image_url: nil, user_type: "student"},
  {email: "test1@destroy.com", username: "test1", password_digest: "$2a$10$3D5on1FJJ35K3cIS/MVNU.0Rhscu/80g6raYhIZkLMmpHURxEw8Su", image_url: nil, user_type: "specialist"},
  {email: "test3@new.com", username: "test2", password_digest: "$2a$10$hn0JBaIjr1nQ1SvNVctyteIfuZGi9Pxu0k5sA7DmVjHevZceL3vB2", image_url: nil, user_type: "coder"}
])
