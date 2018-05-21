# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.destroy_all
r1 = Region.create name:'Inner Solar System', description:'The inner Solar System is the region comprising the terrestrial planets and the asteroid belt.', image_url: "https://upload.wikimedia.org/wikipedia/commons/8/8b/Telluric_planets_size_comparison.jpg"

r2 = Region.create name:'Outer Solar System', description:'The outer region of the Solar System is home to the giant planets and their large moons.', image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Gas_giants_in_the_solar_system.jpg/1920px-Gas_giants_in_the_solar_system.jpg"

r3 = Region.create name:'Trans-Neptunian region', description:'Beyond the orbit of Neptune lies the area of the "trans-Neptunian region", with the doughnut-shaped Kuiper belt, home of Pluto and several other dwarf planets, and an overlapping disc of scattered objects, which is tilted toward the plane of the Solar System and reaches much further out than the Kuiper belt.', image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/EightTNOs.png/2560px-EightTNOs.png"

r4 = Region.create name:'Farthest regions', description:"The point at which the Solar System ends and interstellar space begins is not precisely defined because its outer boundaries are shaped by two separate forces: the solar wind and the Sun's gravity.", image_url: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Solarmap.png"

Planet.destroy_all

p1 = Planet.create name: "Mercury", description: "Mercury is the smallest and innermost planet in the Solar System. ", orbit: 88, diameter:0.3, image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/1920px-Mercury_in_color_-_Prockter07-edit1.jpg", surface_gravity: 3.7, surface_area: 74797
p2 = Planet.create name: "Venus", description: "Venus is the second planet from the Sun, orbiting it every 224.7 Earth days (Venus year).", orbit: 225, diameter:0.9,  image_url:"https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg", surface_gravity: 8.87, surface_area: 460234
p3 = Planet.create name: "Earth", description: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life.", orbit: 365, diameter: 1,  image_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/1920px-The_Earth_seen_from_Apollo_17.jpg", surface_gravity: 9.80665, surface_area: 510064
p4 = Planet.create name:"Mars" , description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.", orbit: 687, diameter: 0.5, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/550px-OSIRIS_Mars_true_color.jpg", surface_area: 143371, surface_gravity: 3.71
p5 = Planet.create name:"Jupiter" , description:"Jupiter is the fifth planet from the Sun and the largest in the Solar System." , orbit: 4333, diameter: 11, image_url:"https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg" , surface_area: 61418738, surface_gravity: 24.79
p6 = Planet.create name: "Saturn" , description:"Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. " , orbit: 10759, diameter: 9.1, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/2880px-Saturn_during_Equinox.jpg", surface_area: 42612133, surface_gravity: 10.4
p7 = Planet.create name: "Uranus" , description: "Uranus is the seventh planet from the Sun.", orbit: 30687, diameter: 4, image_url:"https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg" , surface_area: 8083080, surface_gravity: 8.87
p8 = Planet.create name:"Neptune", description:"Neptune is the eighth and farthest known planet from the Sun in the Solar System.", orbit: 60190, diameter: 3.9, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/1920px-Neptune_Full.jpg", surface_area: 7618272, surface_gravity: 11.15

r1.planets << p1 << p2 << p3 << p4
r2.planets << p5 << p6 << p7 << p8

Moon.destroy_all

m1 = Moon.create name: "Moon", description: "The fifth largest moon in the solar system, Earth's moon is the only place beyond Earth where humans have set foot. People visited the Moon 24 times.", diameter: 0.27, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/1920px-FullMoon2010.jpg", surface_area: 37937, surface_gravity: 1.624

m2 = Moon.create name: "Deimos", description: "Deimos is the smaller of Mars' two moons. Being only 9 by 7 by 6.8 miles in size (15 by 12 by 11 kilometers), Deimos whirls around Mars every 30 hours.
", diameter: 0.001, image_url: "https://solarsystem.nasa.gov/system/stellar_items/list_view_images/8_deimos_480x320_moons.jpg", surface_area: 0, surface_gravity: 0.003

m3 = Moon.create name: "Phobos", description: "Phobos, gouged and nearly shattered by a giant impact crater and beaten by thousands of meteorite impacts, is on a collision course with Mars.", diameter: 0, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/221831main_PIA10368.png/520px-221831main_PIA10368.png", surface_area: 0, surface_gravity: 0.006

m4 = Moon.create name: "Europa", description: "Beneath the icy surface of Jupiter’s moon Europa is perhaps the most promising place to look for present-day environments suitable for life.", diameter: 0.25, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Europa-moon.jpg/520px-Europa-moon.jpg", surface_area: 30613, surface_gravity: 1.315

m5 = Moon.create name: "Ganymede", description: "Ganymede is the largest moon in our solar system and the only moon with its own magnetic field.", diameter: 0.4, image_url: "https://upload.wikimedia.org/wikipedia/commons/7/7f/Ganymede-moon.jpg", surface_area: 86999, surface_gravity: 1.428

m6 = Moon.create name: "Calisto", description: "Callisto is the third largest moon in our solar system and is almost the size of Mercury.", diameter: 0.38, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Callisto2.jpg/520px-Callisto2.jpg", surface_area: 73005, surface_gravity: 1.236

m7 = Moon.create name: "Io", description: "Jupiter's moon Io is the most volcanically active world in the Solar System, with hundreds of volcanoes, some erupting lava fountains dozens of miles (or kilometers) high.", diameter: 0.28, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Io_highest_resolution_true_color.jpg/520px-Io_highest_resolution_true_color.jpg", surface_area: 41698, surface_gravity: 1.796

m8 = Moon.create name: "Phoebe", description: "Phoebe was discovered August 1898 by American astronomer William Pickering.", diameter: 0.02, image_url: "https://upload.wikimedia.org/wikipedia/commons/3/32/Phoebe_cassini.jpg", surface_area: 142, surface_gravity: 0.049

m9 = Moon.create name: "Oberon", description: "Oberon is the second largest moon of Uranus. Discovered in 1787, little was known about this moon until Voyager 2 passed it during its flyby of Uranus in January 1986.", diameter: 0.12, image_url: "https://upload.wikimedia.org/wikipedia/commons/0/09/Voyager_2_picture_of_Oberon.jpg", surface_area: 7285, surface_gravity: 0.332

m10 = Moon.create name: "Triton", description: "Triton was discovered on Oct. 10, 1846 by British astronomer William Lassell, just 17 days after Neptune itself was discovered.", diameter: 0.2, image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c2/Triton_-_August_25_1989_%2817608829504%29.jpg", surface_area: 23017, surface_gravity: 0.779

p3.moons << m1
p4.moons << m2 << m3
p5.moons << m4 << m5 << m6 << m7
p6.moons << m8
p7.moons << m9
p8.moons << m10

User.destroy_all
u1 = User.create email: 'test@create.com', username: 'test', password: 'chicken', user_type: :student
u2 = User.create email: 'test1@destroy.com', username: 'test1', password: 'chicken', user_type: :specialist
u3 = User.create email: 'test3@new.com', username: 'test2', password: 'chicken', user_type: :coder
