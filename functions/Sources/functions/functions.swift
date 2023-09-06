// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

print("Hello, World!")

//function to receive an number
func inputToInt(promt:String) -> Int{
    print(promt)
    if let input = readLine(), let number = Int(input){
        print("Valid number")
        return number
    }
    else{
        print("Invalid number")
        return 1
    }
    
}

func ex01(){
    
    let num1 = inputToInt(promt: "Please enter a number ->")
    let num2 = inputToInt(promt: "Please enter a second number ->")
        
        
        
    if num1  > num2  {
        print("\(num1) is begger then \(num2)")
    }
    else{
        print("\(num2) is bigger then \(num1)")
    }
    
    let sum = num1 + num2
    
    if sum % 2 == 1 {
        print("Them sum \(sum) is odd")
    }
    else {
        print("Them sum \(sum) is even")
    }
        
    
       
}

func calculateRoots(a: Int, b: Int, c: Int) -> (Double?, Double?) {
    let insideSqrRoot = Double(b * b - 4 * a * c)
    
    if insideSqrRoot < 0 {
        return (nil, nil) // No real roots
    } else {
        let sqrtValue = sqrt(insideSqrRoot)
        let rootPos = (-Double(b) + sqrtValue) / (2 * Double(a))
        let rootNeg = (-Double(b) - sqrtValue) / (2 * Double(a))
        return (rootPos, rootNeg)
    }
}

func ex02(){
    
    let a = inputToInt(promt: "Please enter a->")
    let b = inputToInt(promt: "Please enter b->")
    let c = inputToInt(promt: "Please enter c->")
        
    if a == 0{
        print("Impossible")
        return
    }
   
    let (root1, root2) = calculateRoots(a: a, b: b, c: c)
    
    if let root1 = root1, let root2 = root2 {
        
        print("As raízes são: \(root1) e \(root2)")
        
    }
    else {
        
        print("A equação não possui raízes reais")
    }
        
    
}

func ex03() {
    let a = inputToInt(promt: "Insere a->")
    let b = inputToInt(promt: "Insere b->")
    let c = inputToInt(promt: "Insere c->")
    
    if a == 0 || b == 0{
        print("Impossivel")
        return
    }
    
    let res = c*b/a
    print("O resultado e \(res)")
    
}

func ex04() {
    let a = inputToInt(promt: "Insere a->")
    let b = inputToInt(promt: "Insere b->")
    
    var sum = 0
    var max = 0
    
    if a > b {
        max = a
        sum = b
    }
    else if a < b {
        max = b
        sum = a
    }
    
      
    for i in sum...max {
        sum += i
    }
    
    print(sum)
}

func ex05() {
    let a = inputToInt(promt: "Insere a->")
    let b = inputToInt(promt: "Insere b->")
    
    var sum = 0
    var max = 0
    
    if a > b {
        max = a
        sum = b
    }
    else if a < b {
        max = b
        sum = a
    }
    
      
    for i in sum...max {
        if i % 2 == 0 {
            sum += i
        }
    }
    
    print(sum)
}

func findMaxAndMin(_ array: [Int]) -> (Int, Int)? {
    // Check if the array is empty
    guard !array.isEmpty else {
        return nil
    }

    // Initialize variables for the maximum and minimum values with the first element of the array
    var maxVal = array[0]
    var minVal = array[0]

    // Iterate through the array to find the maximum and minimum values
    for element in array {
        if element > maxVal {
            maxVal = element
        }
        if element < minVal {
            minVal = element
        }
    }

    return (maxVal, minVal)
}

let myArray = [5, 2, 9, 1, 7, 3]
if let (maxValue, minValue) = findMaxAndMin(myArray) {
    print("Maximum value: \(maxValue)")
    print("Minimum value: \(minValue)")
} else {
    print("The array is empty.")
}

func fibonacciSequence(upTo n: Int) -> [Int] {
    var sequence = [0, 1]
    
    while sequence.last! + sequence[sequence.count - 2] <= n {
        let nextValue = sequence.last! + sequence[sequence.count - 2]
        sequence.append(nextValue)
    }
    
    return sequence
}

// Example usage:
let n = 100
let fibonacci = fibonacciSequence(upTo: n)
print("Fibonacci sequence up to \(n): \(fibonacci)")

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

// Example usage:
let number = 5
let factorialResult = factorial(number)
print("Factorial of \(number) is \(factorialResult)")

func playRockPaperScissors() {
    let choices = ["rock", "paper", "scissors"]
    
    // Generate a random choice for the computer
    let computerChoice = choices.randomElement()!
    
    print("Welcome to Rock-Paper-Scissors!")
    print("Enter your choice (rock, paper, or scissors): ")
    
    if let playerChoice = readLine() {
        if choices.contains(playerChoice) {
            print("Computer chose: \(computerChoice)")
            print("You chose: \(playerChoice)")
            
            if playerChoice == computerChoice {
                print("It's a tie!")
            } else if (playerChoice == "rock" && computerChoice == "scissors") ||
                      (playerChoice == "paper" && computerChoice == "rock") ||
                      (playerChoice == "scissors" && computerChoice == "paper") {
                print("You win!")
            } else {
                print("Computer wins!")
            }
        } else {
            print("Invalid choice. Please choose from rock, paper, or scissors.")
        }
    }
}

// Play the game
playRockPaperScissors()

