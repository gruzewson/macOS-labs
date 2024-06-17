import Foundation

enum MediaType {
    case video
    case photo
    case gallery_of_photos
    case link
    case nothing
}

class Profile{
    var name: String
    var surname: String
    var verified: Bool
    var activeStory: Bool
    
    init(name: String, surname: String, verified: Bool, activeStory: Bool) {
        self.name = name
        self.surname = surname
        self.verified = verified
        self.activeStory = activeStory
    }
}

struct Date{
    var day: Int
    var month: String
    var hour: String
    var year: Int
    
    init(day: Int, month: String, hour: String, year: Int) {
        self.day = day
        self.month = month
        self.hour = hour
        self.year = year
    }
}

struct Reactions{
    var likes: Int
    var comments: Int
    var shares: Int
    var views: Int
    
    init(likes: Int, comments: Int, shares: Int, views: Int){
        self.likes = likes
        self.comments = comments
        self.shares = shares
        self.views = views
    }
}

class Post: Profile {
    var date: Date
    var text: String
    var mediaType: MediaType
    var reactions: Reactions
    
    init(profile: Profile, date: Date, text: String, mediaType: MediaType, reactions: Reactions) {
        self.date = date
        self.text = text
        self.mediaType = mediaType
        self.reactions = reactions
        
        super.init(name: profile.name, surname: profile.surname, verified: profile.verified, activeStory: profile.activeStory)
    }
    
}

//printing functions

func printProfileInfo(profile: Post) {
    print("Name: \(profile.name)")
    print("Surname: \(profile.surname)")
    print("Verified: \(profile.verified ? "Yes" : "No")")
    print("Active Story: \(profile.activeStory ? "Yes" : "No")")
    print()
}

func printDateInfo(date: Date, currentYear: Int) {
    if date.year == currentYear {
            print("\(date.day) \(date.month) at \(date.hour)")
    } else {
        print("\(date.day) \(date.month) \(date.year)")
    }
    print()
}

func printReactionsInfo(reactions: Reactions, mediaType: MediaType) {
    print("Interactions: ")
    
    if reactions.likes > 0 {
        let likesText = formatNumber(reactions.likes)
        print("Likes: \(likesText)")
    }
    if reactions.comments > 0 {
        let commentsText = formatNumber(reactions.comments)
        print("Comments: \(commentsText)")
    }
    if reactions.shares > 0 {
        let sharesText = formatNumber(reactions.shares)
        print("Shares: \(sharesText)")
    }
    if mediaType == .video && reactions.views > 0 {
        let viewsText = formatNumber(reactions.views)
        print("Views: \(viewsText)")
    }
    
    print()
}

func formatNumber(_ number: Int) -> String {
    if number > 1000000 {
        return String(format: "%.1fM", Float(number) / 1000000)
    } else if number > 1000 {
        return String(format: "%.1fk", Float(number) / 1000)
    } else {
        return "\(number)"
    }
}

func printPostInfo(post: Post, currentYear: Int) {
    print("------------------------")
    printProfileInfo(profile: post)
    printDateInfo(date: post.date, currentYear: currentYear)
    print("\(post.text)\n")
    print("Media type: \(post.mediaType)\n")
    printReactionsInfo(reactions: post.reactions, mediaType: post.mediaType)
}

//defining data
//1 post
let user1 = Profile(name: "Apple", surname: "", verified: true, activeStory: false)
let date1 = Date(day: 12, month: "September", hour: "", year: 2018)
let text1 = "The all new iPhone XS, iPhone XS Max, iPhone XR and Apple Watch Series 4 are here."
let reactions1 = Reactions(likes: 413000, comments: 189000, shares: 333000, views: 18200000)

let post1 = Post(profile: user1, date: date1, text: text1, mediaType: MediaType.video, reactions: reactions1)

printPostInfo(post: post1, currentYear: 2024)

//2 post
let user2 = Profile(name: "Mariusz", surname: "Pudzianowski", verified: true, activeStory: true)
let date2 = Date(day: 11, month: "March", hour: "22:56", year: 2024)
let text2 = "Poniedziałek zaliczony, a teraz czas na odpoczynek i ładowanie baterii🔥"
let reactions2 = Reactions(likes: 2300, comments: 89, shares: 0, views: 0)

let post2 = Post(profile: user2, date: date2, text: text2, mediaType: MediaType.gallery_of_photos, reactions: reactions2)

printPostInfo(post: post2, currentYear: 2024)