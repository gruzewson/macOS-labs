import Foundation

//1 and 4
struct Location {
    let id: Int
    let type: String
    let name: String
    let rating: Int
}

struct City {
    let id: Int
    let name: String
    let description: String
    let latitude: Double
    let longitude: Double
    let keywords: [String]
    let locations: [Location]
}

let cities: [City] = [
    City(id: 1, name: "Warsaw", description: "Capital of Poland", latitude: 52.2297, longitude: 21.0122, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 1, type: "restaurants", name: "Restaurant A", rating: 4),
        Location(id: 2, type: "pubs", name: "Pub B", rating: 3),
        Location(id: 3, type: "museums", name: "Museum C", rating: 5)
    ]),
    City(id: 2, name: "Krakow", description: "Cultural Capital of Poland", latitude: 50.0614, longitude: 19.9366, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 4, type: "restaurants", name: "Restaurant D", rating: 5),
        Location(id: 5, type: "pubs", name: "Pub E", rating: 4),
        Location(id: 6, type: "museums", name: "Museum F", rating: 3)
    ]),
    City(id: 3, name: "Wroclaw", description: "City of Bridges", latitude: 51.1079, longitude: 17.0385, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 7, type: "restaurants", name: "Restaurant G", rating: 4),
        Location(id: 8, type: "pubs", name: "Pub H", rating: 3),
        Location(id: 9, type: "museums", name: "Museum I", rating: 5)
    ]),
    City(id: 4, name: "Gdansk", description: "City of the Three Tugs", latitude: 54.3520, longitude: 18.6465, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 10, type: "restaurants", name: "Restaurant J", rating: 4),
        Location(id: 11, type: "pubs", name: "Pub K", rating: 3)
    ]),
    City(id: 5, name: "Poznan", description: "City of the Three Cathedrals", latitude: 52.4063, longitude: 16.9253, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 12, type: "restaurants", name: "Restaurant L", rating: 5),
        Location(id: 13, type: "museums", name: "Museum M", rating: 4)
    ]),
    City(id: 6, name: "Los Angeles", description: "City of Stars", latitude: 34.0522, longitude: -118.2437, keywords: ["party", "sport", "music", "nature"], locations: [
        Location(id: 14, type: "restaurants", name: "Restaurant N", rating: 4),
        Location(id: 15, type: "pubs", name: "Pub O", rating: 3),
        Location(id: 16, type: "museums", name: "Museum P", rating: 5)
    ]),
    City(id: 7, name: "Chicago", description: "Windy City", latitude: 41.8781, longitude: -87.6298, keywords: ["music", "sport", "food", "history"], locations: [
        Location(id: 17, type: "restaurants", name: "Restaurant Q", rating: 4),
        Location(id: 18, type: "pubs", name: "Pub R", rating: 3),
        Location(id: 19, type: "museums", name: "Museum S", rating: 5)
    ]),
    City(id: 8, name: "London", description: "Capital of England", latitude: 51.5074, longitude: -0.1278, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 20, type: "restaurants", name: "Restaurant T", rating: 4),
        Location(id: 21, type: "pubs", name: "Pub U", rating: 3),
        Location(id: 22, type: "museums", name: "Museum V", rating: 5)
    ]),
    City(id: 9, name: "Paris", description: "City of Love", latitude: 48.8566, longitude: 2.3522, keywords: ["food", "fashion", "history", "music"], locations: [
        Location(id: 23, type: "restaurants", name: "Restaurant W", rating: 4),
        Location(id: 24, type: "pubs", name: "Pub X", rating: 3),
        Location(id: 25, type: "museums", name: "Museum Y", rating: 5)
    ]),
    City(id: 10, name: "Tokyo", description: "Capital of Japan", latitude: 35.6895, longitude: 139.6917, keywords: ["technology", "food", "history", "nature"], locations: [
        Location(id: 26, type: "restaurants", name: "Restaurant Z", rating: 4),
        Location(id: 27, type: "pubs", name: "Pub AA", rating: 3),
        Location(id: 28, type: "museums", name: "Museum BB", rating: 5)
    ]),
    City(id: 11, name: "Sydney", description: "Harbour City", latitude: -33.8688, longitude: 151.2093, keywords: ["nature", "sport", "food", "music"], locations: [
        Location(id: 29, type: "restaurants", name: "Restaurant CC", rating: 4),
        Location(id: 30, type: "pubs", name: "Pub DD", rating: 3),
        Location(id: 31, type: "museums", name: "Museum EE", rating: 5)
    ]),
    City(id: 12, name: "Moscow", description: "Capital of Russia", latitude: 55.7512, longitude: 37.6184, keywords: ["history", "food", "music", "sport"],
    locations: [
        Location(id: 32, type: "restaurants", name: "Restaurant CC", rating: 4),
        Location(id: 33, type: "pubs", name: "Pub DD", rating: 3),
        Location(id: 34, type: "museums", name: "Museum EE", rating: 5)
    ]),
    City(id: 13, name: "Rome", description: "Eternal City", latitude: 41.9028, longitude: 12.4964, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 35, type: "restaurants", name: "Restaurant FF", rating: 4),
        Location(id: 36, type: "pubs", name: "Pub GG", rating: 3),
        Location(id: 37, type: "museums", name: "Museum HH", rating: 5)
    ]),
    City(id: 14, name: "Madrid", description: "Capital of Spain", latitude: 40.4168, longitude: -3.7038, keywords: ["food", "music", "sport", "history"], locations: [
        Location(id: 38, type: "restaurants", name: "Restaurant LL", rating: 4),
        Location(id: 39, type: "pubs", name: "Pub MM", rating: 3),
        Location(id: 40, type: "museums", name: "Museum NN", rating: 5)
    ]),
    City(id: 15, name: "Dubai", description: "City of Gold", latitude: 25.2048, longitude: 55.2708, keywords: ["food", "music", "sport", "nature"], locations: [
        Location(id: 41, type: "restaurants", name: "Restaurant OO", rating: 4),
        Location(id: 42, type: "pubs", name: "Pub PP", rating: 3),
        Location(id: 43, type: "museums", name: "Museum QQ", rating: 5)
    ]),
    City(id: 16, name: "Bangkok", description: "Capital of Thailand", latitude: 13.7563, longitude: 100.5018, keywords: ["food", "music", "sport", "nature"], locations: [
        Location(id: 44, type: "restaurants", name: "Restaurant RR", rating: 4),
        Location(id: 45, type: "pubs", name: "Pub SS", rating: 3),
        Location(id: 46, type: "museums", name: "Museum TT", rating: 5)
    ]),
    City(id: 17, name: "Toronto", description: "Canada's Biggest City", latitude: 43.6532, longitude: -79.3832, keywords: ["nature", "sport", "food", "music"], locations: [
        Location(id: 47, type: "restaurants", name: "Restaurant UU", rating: 4),
        Location(id: 48, type: "pubs", name: "Pub VV", rating: 3),
        Location(id: 49, type: "museums", name: "Museum WW", rating: 5)
    ]),
    City(id: 18, name: "Melbourne", description: "Australia's Cultural Capital", latitude: -37.8136, longitude: 144.9631, keywords: ["nature", "sport", "food", "music"], locations: [
        Location(id: 50, type: "restaurants", name: "Restaurant XX", rating: 4),
        Location(id: 51, type: "pubs", name: "Pub YY", rating: 3),
        Location(id: 52, type: "museums", name: "Museum ZZ", rating: 5)
    ]),
    City(id: 19, name: "Hong Kong", description: "Asia's World City", latitude: 22.2875, longitude: 114.1589, keywords: ["food", "music", "sport", "nature"], locations: [
        Location(id: 53, type: "restaurants", name: "Restaurant AA", rating: 4),
        Location(id: 54, type: "pubs", name: "Pub BB", rating: 3),
        Location(id: 55, type: "museums", name: "Museum CC", rating: 5)
    ]),
    City(id: 20, name: "Berlin", description: "Capital of Germany", latitude: 52.5200, longitude: 13.4050, keywords: ["history", "food", "music", "sport"], locations: [
        Location(id: 35, type: "restaurants", name: "Restaurant II", rating: 4),
        Location(id: 36, type: "pubs", name: "Pub JJ", rating: 3),
        Location(id: 37, type: "museums", name: "Museum KK", rating: 5)
    ]),
]


//2.1
func findCities(name: String) -> [City] {
    return cities.filter { $0.name.lowercased() == name.lowercased() }
}

let searchedCities = findCities(name: "Warsaw")
print("Cities named Warsaw:")
for city in searchedCities {
    print(city)
}
print()

//2.2
func findCitiesByKeyword(keyword: String) -> [City] {
    return cities.filter { $0.keywords.contains(keyword) }
}

let searchedKeywords = findCitiesByKeyword(keyword: "music")
print("Cities with keyword music:")
for city in searchedKeywords {
    print(city.name)
}
print()

//3.1
func calculateDistance(city1: City, city2: City) -> Double {
    let dx = city2.longitude - city1.longitude
    let dy = city2.latitude - city1.latitude
    return sqrt(dx * dx + dy * dy)
}

let warsaw = cities.first { $0.name == "Warsaw" }!
let losAngeles = cities.first { $0.name == "Los Angeles" }!

let distance = calculateDistance(city1: warsaw, city2: losAngeles)
print("Distance between Warsaw and Los Angeles: \(distance) kilometers")

//3.2
func findClosestAndFarthestCity(userLatitude: Double, userLongitude: Double) {
    let distances = cities.map { city -> (city: City, distance: Double) in
        let distance = calculateDistance(city1: City(id: 0, name: "", description: "", latitude: userLatitude, longitude: userLongitude, keywords: [], locations: []), city2: city)
        return (city, distance)
    }
    
    let sortedCities = distances.sorted { $0.distance < $1.distance }
    
    if let closestCity = sortedCities.first, let farthestCity = sortedCities.last {
        print("\nClosest city: \(closestCity.city.name) - Distance: \(closestCity.distance) kilometers")
        print("Farthest city: \(farthestCity.city.name) - Distance: \(farthestCity.distance) kilometers")
    } else {
        print("No cities found.")
    }
}

//warsaw
let userLatitude = 52.2297
let userLongitude = 21.0122 
findClosestAndFarthestCity(userLatitude: userLatitude, userLongitude: userLongitude)

//3.3
func findTwoFarthestCities() {
    var maxDistance = 0.0
    var farthestCities: (City, City)?
    
    for i in 0..<cities.count {
        for j in i+1..<cities.count {
            let distance = calculateDistance(city1: cities[i], city2: cities[j])
            if distance > maxDistance {
                maxDistance = distance
                farthestCities = (cities[i], cities[j])
            }
        }
    }
    
    if let cities = farthestCities {
        print("\nFirst farthest city: \(cities.0.name) - Distance: \(maxDistance) kilometers")
        print("Second farthest city: \(cities.1.name) - Distance: \(maxDistance) kilometers\n")
    } else {
        print("Not enough cities to find the two farthest.")
    }
}

findTwoFarthestCities()

//5.1
func citiesWithFiveStarRestaurants() -> [City] {
    return cities.filter { city in
        return city.locations.contains(where: { $0.type == "restaurants" && $0.rating == 5 })
    }
}

//5.2
func locationsSortedByRating(forCity city: City) -> [Location] {
    return city.locations.sorted { $0.rating > $1.rating }
}

//5.3
func displayCitiesWithFiveStarRestaurants() {
    for city in cities {
        let fiveStarRestaurants = city.locations.filter { $0.type == "restaurants" && $0.rating == 5 }
        if fiveStarRestaurants.count > 0 { 
        print("City: \(city.name) - Number of 5-star restaurants: \(fiveStarRestaurants.count)")
        for restaurant in fiveStarRestaurants {
            print(" - \(restaurant.name) - Rating: \(restaurant.rating)")
        }
        }
    }
}

print("Cities with 5-star restaurants:")
for city in citiesWithFiveStarRestaurants() {
    print(city.name)
}

let w = cities.first { $0.name == "Warsaw" }!
print("\nLocations in Warsaw sorted by rating:")
for location in locationsSortedByRating(forCity: w) {
    print(" - \(location.name) - Rating: \(location.rating)")
}

print("\nAll cities with information on 5-star restaurants:")
displayCitiesWithFiveStarRestaurants()


