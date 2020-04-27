import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array

func contains<T: Equatable>(element: T, in elements: [T]) -> Bool {
    return elements.contains(element)
}

let array = [1, 2, 3, 4, 5]

contains(element: 3, in: array)

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico

func sumOfAll<T: AdditiveArithmetic>(elementsOf elements: [T]) -> T {
    return elements.reduce(T.zero) { (x, y) -> T in
        x + y
    }
}

print(sumOfAll(elementsOf: array))

extension Array where Element: AdditiveArithmetic {
    func sumOfAll() -> Element {
        return self.reduce(Element.zero) { (x, y) -> Element in
            x + y
        }
    }
}

print(array.sumOfAll())

//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays

func intersection<T: Equatable>(between a: [T], and b: [T]) -> Int {
    var result = 0
    a.forEach { (x) in
        if contains(element: x, in: b) {
            result += 1
        }
    }

    return result
}

let arrayB = [2, 4, 5]

print(intersection(between: array, and: arrayB))

func instersection<T: Equatable>(between arrays: [T]...) -> Int {
    var result = 0


    return 0
}
