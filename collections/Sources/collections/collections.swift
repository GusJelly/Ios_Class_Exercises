//
//  main.swift
//  Collection
//
//  Created by Tomás Costa on 29/06/2023.
//

import Foundation

//array com 10 numeros
var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(numbers)

//add o numero 11
numbers.append(11)
print(numbers)


//procura o numero 5 e remove-o
if let index = numbers.firstIndex(of: 5){
    numbers.remove(at: index)
}
print(numbers)

//verificar se o array contem o numero 8
if numbers.contains(8){
    print("o array contem o numero 8")
}

else{
    print("o numero 8 não existe")
}
print(numbers)

//Declare um Set chamado uniqueNumberse inicialize-o com os numeros de 1 a 10.
var uniqueNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(uniqueNumbers)

//add o numero 11
uniqueNumbers.append(11)
print(uniqueNumbers)

//procura o numero 5 e remove-o
if let index = uniqueNumbers.firstIndex(of: 5){
    uniqueNumbers.remove(at: index)
}
print(uniqueNumbers)

//verificar se o array contem o numero 8
if uniqueNumbers.contains(8){
    print("o array contem o numero 8")
}
else{
    print("o numero 8 não existe")
}
print(uniqueNumbers)


//dicionario
var nomes = [Int: String]()

nomes[1] = "João"
nomes[2] = "Maria"
nomes[3] = "Pedro"
nomes[4] = "Ana"

print(nomes)

//aceder ao nome 2
if let nome = nomes[2]{
    print(nome)
}

//even numbers
var filteredNumbers = numbers.filter{ $0 % 2 == 0 }
print(filteredNumbers)

//even numbers from unique
var uniqueFilteredNumbers = uniqueNumbers.filter{ $0 % 2 == 0 }
print(uniqueFilteredNumbers)

//dicionario filteredNames
var filteredNames = nomes.filter{ $0.key % 2 == 0 }
print(filteredNames)

//sort array decrescente
numbers.sort { $0 > $1 }
print(numbers)

//array max number
if let maxNumber = numbers.max() {
    print(maxNumber)
}

var sqrNumbers: [Double] = []

for num in numbers{
    var sqrNum = sqrt(Double(num))
    sqrNumbers.append(sqrNum)
    sqrNum  = 1
    
}

print(sqrNumbers)

//Verifique se todos os elementos do Array numbers s˜ao maiores que 0.

var maiorZero: Bool = true

for num in numbers{
    if num < 0 {
        maiorZero = false
    }
}
 print(maiorZero)

var sum = 0

//Encontre a soma de todos os elementos do Array numbers.
for num in numbers{
    sum += num
}

print(sum)

//Crie um Set chamado uniqueSquaredNumbers que contenha o quadrado
//de cada n´umero ´unico no Set uniqueNumbers.


var uniqueSqrNumbers: [Double] = []

for num in uniqueNumbers{
    var sqrNum = sqrt(Double(num))
    uniqueSqrNumbers.append(sqrNum)
    sqrNum  = 1
    
}

print(uniqueSqrNumbers)

//Crie um Dicion´ario chamado nameLengths que mapeie cada nome no
//Dicion´ario names para o seu comprimento (n´umero de caracteres).

for(_, value) in nomes {
    let valueLength = value.count
    print("Valor: \(value), Length: \(valueLength)")
}

