// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

print("Hello, World!")

//Crie uma classe chamada Person com propriedades de nome e idade. Em
//seguida, crie uma instˆancia dessa classe e imprima os valores das propriedades.
print("==============1=============\n")

class Person {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
}

var p = Person(nome: "Vanessa", idade: 20)

print(p.nome)
print(p.idade)


print("==============2=============\n")
//Crie uma struct chamada Point com propriedades x e y. Adicione um m´etodo
//de instˆancia chamado distanceToOrigin que calcula e retorna a distˆancia do
//ponto (x, y) at´e a origem (0, 0).


struct Point {
    var x: Double
    var y: Double
    
    
    
    
    func distanceToOrigin() ->Double{
        return sqrt(self.x * self.x + self.y * self.y)
       
    }
}

var ponto = Point (x: 5, y: 3)
let distancia = ponto.distanceToOrigin()
print(distancia)


print("==============3=============\n")
//Exerc´ıcio 3
//Crie uma classe chamada Shape com um m´etodo vazio chamado draw. Em
//seguida, crie uma subclasse chamada Circle que herda de Shape e substitui o
//m´etodo draw para imprimir ”Desenhando um c´ırculo”.

class Shape {
    
    func draw() {}
}

class Circle: Shape {
    
    override func draw(){
        print("Desenhando um circulo")
    }
}

let shape = Shape()
shape.draw()

let circle = Circle()
circle.draw()

print("==============4=============\n")
//Exerc´ıcio 4
//Crie um protocolo chamado Describable que declare um m´etodo chamado
//describe sem implementa¸c˜ao. Em seguida, fa¸ca a classe Person adotar o protocolo Describable e implemente o m´etodo describe para imprimir uma descri¸c˜ao da pessoa.

protocol Descridable {
    
    func describe ()
    
}

class Pessoa: Descridable {
    
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func describe(){
        print("Nome: \(nome) idade \(idade)")
    }
}

let pessoa = Pessoa(nome: "Joao", idade: 60)
pessoa.describe()

print("==============5=============\n")
//Exerc´ıcio 5
//Crie uma extens˜ao para a struct Point com um m´etodo chamado isOrigin que
//retorna true se o ponto estiver na origem (0, 0) e false caso contr´ario.

extension Point {
    
    func isOrigin() -> Bool{
        if self.x == 0 && self.y == 0 {
            return true
        } else {
            return false
        }
    }
}

let p2 = Point(x: 0, y: 0)
let isOrigin = p2.isOrigin()

print(isOrigin)

print("==============6=============\n")
//Exerc´ıcio 6
//Crie um protocolo chamado Printable com uma propriedade computada chamada
//description de tipo String. Fa¸ca a classe Person adotar o protocolo Printable
//e implemente a propriedade description para retornar uma descri¸c˜ao formatada da pessoa.

protocol Printable{
    
    var description: String {
        get
    }
}

class Person2: Printable {
    
    var nome: String
    var idade: Int
    
    
    init(nome: String, idade: Int ){
        self.nome = nome
        self.idade = idade
        
    }
    var description: String {
        return "Nome \(nome) idade \(idade)"
    }
}

let p3 = Person2(nome: "Ana", idade: 19)
print(p3.description)

print("==============7=============\n")
//Exerc´ıcio 7
//Crie uma classe base chamada Vehicle com uma propriedade chamada numberOfWheels
//e um m´etodo chamado drive que imprime ”Dirigindo o ve´ıculo”. Em seguida,
//crie uma subclasse chamada Car que herda de Vehicle e substitui o m´etodo
//drive para imprimir ”Dirigindo o carro”.

class Vehicle {
    var numberOfWheels: Int
    
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
    
    func drive() -> String{
        return "Conduzir veiculo"
    }
}

class Car: Vehicle{
     
    override func drive() -> String {
        return "Conduzir carro"
    }
}

let v1 = Vehicle(numberOfWheels: 4)
print(v1.drive())

let c1 = Car(numberOfWheels: 4)
print(c1.drive())

print("==============8=============\n")
//Exerc´ıcio 8
//Crie um protocolo chamado AreaCalculable com um m´etodo chamado calculateArea
//que retorna a ´area de uma forma geom´etrica. Fa¸ca a struct Circle adotar o protocolo AreaCalculable e implemente o m´etodo calculateArea para retornar
//a ´area do c´ırculo.



protocol AreaCalculatable {
    func calculateArea() -> Double
}

struct Circle2: AreaCalculatable {
    var raio: Double
    
    func calculateArea() -> Double {
        return 3.14 * (raio * raio)
    }
}

let circulo = Circle2(raio: 4.0)
let area = circulo.calculateArea()
 print(area)


print("==============9=============\n")
//Crie uma extens˜ao para a classe String com um m´etodo chamado reverse que
//retorna uma nova string com os caracteres em ordem reversa.

extension String{
    
    func reverse(palavra: String) -> String {
        let str = palavra.reversed()
        return String(str)
    }
}

let str = String()
let newStr = str.reverse(palavra: "ola")
print(newStr)

print("==============10=============\n")
//Crie um protocolo chamado Equatable com um m´etodo chamado isEqual que
//compara dois objetos e retorna true se forem iguais e false caso contr´ario.
//Fa¸ca a classe Person adotar o protocolo Equatable e implemente o m´etodo
//isEqual para comparar duas instˆancias da classe Person com base no nome e
//na idade.

protocol Equatable {
    
    func isEqual(p1: Person3, p2: Person3) -> Bool
}

class Person3: Equatable {
    
    var nome: String
    var idade: Int
    
    
    init(nome: String, idade: Int ){
        self.nome = nome
        self.idade = idade
    
    }
    
    static func ==(lhe: Person3, rhs: Person3) -> Bool {
        return lhe.nome == rhs.nome && lhe.idade == rhs.idade
    }
   
    
    func isEqual(p1: Person3, p2: Person3) -> Bool{
        if p1 == p2{
            return true
        } else {
            return false
        }
    }
        
}

let p6 = Person3(nome:"aaa", idade:20)
let p7 = Person3(nome:"bbb", idade:20)

let igual = p6.isEqual(p1: p6, p2: p7)
print(igual)

