import UIKit

class Genre {
    var id:Int?
    var name = ""
    
    init(_ name:String){
        self.name = name
    }
}

class Person {
    var id:Int?
    var firstName = ""
    var lastName = ""
    
    // Creating new default initializer
    init(_ firstName:String, _ lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // Creating function to return the full name for the computed property fullTitle
    // in "Book"
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}

class Book {
    
    // Computed property
    var fullTitle:String {
        if title != nil && genre != nil && author != nil {
            return title! + " is a " + genre!.name + " written by " + author!.getFullName()
        } else if title != nil && genre != nil {
            return title! + " is a " + genre!.name
        } else if title != nil {
            return title!
        } else {
            return "No title"
        }
    }
    
    // Properties
    var title:String?
    var id:Int?
    var genre:Genre?
    var author:Person?
    var ratings = 0
    
    init(_ title:String, _ genre:Genre, _ author:Person) {
        self.title = title
        self.genre = genre
        self.author = author
    }
}

let genre = Genre("novel")
let author = Person("Marcel", "Proust")
var title = "In Search of Lost Time"
let myBook = Book(title, genre, author)

print(myBook.fullTitle)


print("\n")

let author2 = Person("James", "Joyce")
let title2 = "Ulysses"
let mySecondBook = Book(title2, genre, author2)

print(mySecondBook.fullTitle)

