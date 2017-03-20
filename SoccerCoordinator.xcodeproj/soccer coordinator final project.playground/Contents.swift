/// William Vivas soccer league coordinator
//iOS tech degree
//Swift

//Array of dictionaries for all players
let allPlayers : [[ String:String ]] = [
    ["name": "Joe Smith", "height": "42", "skilled": "YES", "guardians": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": "36", "skilled": "YES", "guardians" : "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "skilled": "YES", "guardians" : "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "skilled": "NO", "guardians" : "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": "40", "skilled": "NO", "guardians" : "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": "41", "skilled": "NO", "guardians" : "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "skilled": "NO", "guardians" : "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "skilled": "YES", "guardians" : "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": "44", "skilled": "YES", "guardians" : "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "skilled": "NO", "guardians" : "Gala Dali"],
    ["name": "Joe Kavalier", "height": "39", "skilled": "NO", "guardians" : "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": "44", "skilled": "NO", "guardians" : "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "skilled": "YES", "guardians" : "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "skilled": "NO", "guardians" : "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": "43", "skilled": "NO", "guardians" : "Claire Willis"],
    ["name": "Phillip Helm", "height": "44", "skilled": "YES", "guardians" : "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "skilled": "YES", "guardians" : "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "skilled": "YES", "guardians" : "Hyman and Rachel Krustofski"]
]


// Arrays to split up experienced and non experienced players
var experiencedPlayers : [[String:String]] = []
var nonexperiencedPlayers : [[String:String]] = []

// Arrays for the different teams
var raptors : [[String:String]] = []
var sharks : [[String:String]] = []
var dragons : [[String:String]] = []

// loop to seperate the experienced from the inexperienced players
for current in allPlayers {
    if (current["skilled"] == "YES") {
        experiencedPlayers.append(current)
    } else {
        nonexperiencedPlayers.append(current)
    }
}

// function to divide players among the 3 teams
func splitPlayers(place: [[String:String]]) {
    var n = 0
    while n < place.count {
        raptors.append(place[n])
        sharks.append(place[n+1])
        dragons.append(place[n+2])
        n = n + 3
    }
}

// calling the function to divide the players evenly among the teams
splitPlayers(place: experiencedPlayers)
splitPlayers(place: nonexperiencedPlayers)

/// function to create personalized letters for the teams
func lettercreator(teamArrays: [[String:String]], team: String, gameTime:String, gameDate: String){
    for player in teamArrays {
        let name = player["name"]!
        let guardians = player["guardians"]!
        print("Dear \(guardians),\n  This letter is to notify you that your child, \(name), has been assigned to the \(team) soccer team. The first game of the season will be at \(gameTime) on \(gameDate).\n See you then!\n The Super Awesome Soccer League \n")
    }
}

// call the function to write the letters for parents
lettercreator(teamArrays: sharks, team: "Sharks", gameTime: "3pm", gameDate: "March 17")
lettercreator(teamArrays: raptors, team: "Raptors", gameTime: "1pm", gameDate: "March 18")
lettercreator(teamArrays: dragons, team: "Dragons", gameTime: "1pm", gameDate: "March 17")