//Create cases to test
//first get your even numbers
//then get your off numbers
//notes for getEven function
//reduce performs an action on each item in a collection
//if (number % 2 == 0) {
// return accum + [index]
//} else {
//return accum
//the above is equal return (number % 2) ? accum + [index] : accum


func getEven(input: String) -> [Character] {
    let characters = input.characters
    let indices: [String.CharacterView.Index] = []
    return characters.indices.enumerated().reduce([]) { (accum, tuple) in
        let (number, index) = tuple
        return (number % 2 == 1) ? accum + [index] : accum
    }
    return indices.map {
        characters[$0]
    }
}

func getOdd(input: String) -> [Character] {
    let characters = input.characters
    //reduce performs an action on each item in a collection
    return characters.indices.enumerated().reduce([]) { (accum, tuple) in
        let (number, index) = tuple
        return (number % 2 == 0) ? accum + [index] : accum
    }
    return indices.map {
        characters[$0]
    }
}


func splitEvenOdd(input: String) -> (even: [Character], odd: [Character]) {

    var even: [Character] = []
    var odd: [Character] = []
    
    for (number, character) in input.characters.enumerated() {
        if ((number + 1) % 2) == 0 {
            even.append(character)
        } else {
            odd.append(character)
        }
    }
}


//if (number % 2 == 0) {
// return accum + [index]
//} else {
//return accum


func reverseEven(word: String) -> [Character] {
}

