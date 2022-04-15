import UIKit
import Darwin

class Person{
    var name : String?
    var surname : String?
    var year : Int?
}

extension Person {
    func showInfo(){
        print(" Name Surname : \(name!) \(surname!)")
    }
}

var p1 : Person = Person()
p1.name = "Beyza"
p1.surname = "Karadeniz"
p1.showInfo()

extension Int {
    var squareNumber : Int{
        return self * self
    }
    var nextNumber : Int {
        return self + 1
    }
    func factoriel() -> Int {
        var result = 1
        for i in (1...self){
            result *= i
        }
        return result
    }
}
print(5.squareNumber)
var number : Int = 6
print (number.squareNumber)
print(number)
print(number.nextNumber)
print(4.factoriel())
print(number.factoriel())

extension Double {
  mutating  func calculateArea(){ // immutable ifade oldugu için mutable ekliyoruz
        let pi = 3.14
        self = pi * (self * self) // hesaplanan alan degerini bu sefer kendisine tekrar atanır
        
    }
}
class Circle {
    var radius : Double
    init (radius : Double ){
        self.radius = radius
    }
}
var c1 = Circle(radius: 2.5)
print(c1.radius)
c1.radius.calculateArea()
print(c1.radius)
var radius : Double = 10.5
radius.calculateArea()
print(radius)

extension String {
    func reverse() -> String {
        var characters = [Character]()
        for character in self {
            characters.insert(character, at: 0)
        }
        return String(characters)
    }
    
    
}

var name : String = "Beyza"
print("beyza".reverse())


extension Collection{
    func addElemans() -> [Iterator.Element]{ //ıterator element gelen eleman neyse onun dönüs tipini döndür
        var nowIndex = startIndex
        var results : [Iterator.Element] =  []
        var i = 0
        repeat{
            if i % 2 == 0 {
                results.append(self[nowIndex])
            }
            //nowIndex i  bir sonraki index degerine getirecektir
            nowIndex = self.index(after: nowIndex)
            i += 1
        }while(nowIndex != endIndex)
        return results
    }
    func mixElements() -> [Iterator.Element]{
        return sorted()  {firstEleman, secondEleman in
            return arc4random() < arc4random()
        }
    }
    
}
var numbers = [10,20,30,40,50,60,70,80,90,100]
var newNumbers = numbers.addElemans()
print(numbers)
print(newNumbers)
var mixElements = numbers.mixElements()
print(mixElements)

var personYear : [String : Int] = ["Beyza" :23 , "Ömer Berke" : 18 , "Ali Bekir" : 48 ] //dictionary
var personYearAdd = personYear.addElemans()

for eleman in personYearAdd {
    print(eleman)
}

extension Collection where Self : ExpressibleByArrayLiteral {    
}
extension Collection where Iterator.Element : Comparable {
    
}
