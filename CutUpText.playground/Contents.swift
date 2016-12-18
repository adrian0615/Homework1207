//Fuzzy Wuzzy was a bear!

//Fuzzy Wuzzy lost his hair.

//Now Fuzzy wuzzy wasn't fuzzy wuzzy.


//function for printing in reverse

func reverseStory(threeSentences: [String]) -> ([String]) {
    var newString = threeSentences
    let firstSentence = newString.remove(at: newString.startIndex)
    let findLast = newString.index(before: newString.endIndex)
    let lastSentence = newString.remove(at: findLast)
    
    newString.append(firstSentence)
    newString.insert(lastSentence, at: newString.startIndex)
    
    return newString
}


//function for printing in random order


func randomStory(threeSentences: [String]) -> ([String]) {
    var newString = threeSentences
    newString
    
    return newString
    
}

