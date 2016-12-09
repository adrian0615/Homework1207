//The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.

func sleepIn(weekday: Bool, vacation: Bool) -> Bool {
    if vacation == true || weekday == false {
        return true
    } else {
        return false
    }
}



sleepIn(weekday: false, vacation: false) //→ true
sleepIn(weekday: true, vacation: false) //→ false
sleepIn(weekday: false, vacation: true) //→ true



//We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return true if we are in trouble.




func monkeyTrouble(aSmile: Bool, bSmile: Bool) -> Bool {
    if aSmile == true && bSmile == false {
        return false
    } else if aSmile == false && bSmile == true {
        return false
    } else {
        return true
    }
}


monkeyTrouble(aSmile: true, bSmile: true) //→ true
monkeyTrouble(aSmile: false, bSmile: false) //→ true
monkeyTrouble(aSmile: true, bSmile: false) //→ false
monkeyTrouble(aSmile: false, bSmile: true) //→ false


//Given two int values, return their sum. Unless the two values are the same, then return double their sum.

func sumDouble(x: Int, y: Int) -> Int {
    if x == y {
        return (x + y) * 2
    } else {
        return x + y
    }
}


sumDouble(x: 1, y: 2) //→ 3
sumDouble(x: 3, y: 2) //→ 5
sumDouble(x: 2, y: 2) //→ 8


//Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.


func diff21(x: Int) -> Int {
    if x > 21 {
        return (x - 21) * 2
    } else {
        return 21 - x
    }
}

diff21(x: 19) //→ 2
diff21(x: 10) //→ 11
diff21(x: 21) //→ 0


//We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.

func parrotTrouble(isTalking: Bool, hour: Int) -> Bool {
    if hour < 7 && isTalking == true || hour > 20 && isTalking == true {
        return true
    } else if isTalking == false {
        return false
    } else {
        return false
    }
}


parrotTrouble(isTalking: true, hour: 6) //→ true
parrotTrouble(isTalking: true, hour: 7) //→ false
parrotTrouble(isTalking: false, hour: 6) //→ false


//Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.

func makes10(a: Int, b: Int) -> Bool {
    if a + b == 10 || a == 10 || b == 10 {
        return true
    } else {
        return false
    }
}

makes10(a: 9, b: 10) //→ true
makes10(a: 9, b: 9) //→ false
makes10(a: 1, b: 9) //→ true


//Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes the absolute value of a number.

func nearHundred(n: Int) -> Bool {
    if n > 89 && n < 111 {
        return true
    } else if n > 189 && n < 211 {
        return true
    } else {
        return false
    }
}

nearHundred(n: 93) //→ true
nearHundred(n: 90) //→ true
nearHundred(n: 89) //→ false


//Given 2 int values, return true if one is negative and one is positive. Except if the parameter "negative" is true, then return true only if both are negative.


func posNeg(firstValue: Int, secondValue: Int, negative: Bool) -> Bool {
    if firstValue > 0 && secondValue < 0 {
        return true
    } else if firstValue < 0 && secondValue > 0 {
        return true
    } else if firstValue < 0 && secondValue < 0 && negative == true {
        return true
    } else {
        return false
    }
}


//Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged. (If the string already has "not" in front then return the String)

func notString(word: String) -> String {
    if word.hasPrefix("not") == true {
    return word
    } else {
        return "not \(word)"
    }
}

notString(word: "candy") //→ "not candy"
notString(word: "x") //→ "not x"
notString(word: "not bad") //→ "not bad"


//Given a non-empty string and an int n, return a new string where the char at index n has been removed. The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..str.length()-1 inclusive).

func missingChar(word: String, n: Int) -> String {
    let count = word.characters.count
    var newWord = word
    let index = word.index(word.startIndex, offsetBy: n)
    if count > 0 {
        newWord.remove(at: index)
    }
    return newWord
}


missingChar(word: "kitten", n: 1) //→ "ktten"
missingChar(word: "kitten", n: 0) //→ "itten"
missingChar(word: "kitten", n: 4) //→ "kittn"


//Given a string, return a new string where the first and last chars have been exchanged.

func frontBack(word: String) -> String {
    let count = word.characters.count
    
    if count < 1 {
        return word
    }
    var firstLetter = word.characters.startIndex
    var lastLetter = word.characters.endIndex
    
    return lastLetter + + firstLetter
}




//frontBack("code") //→ "eodc"
//frontBack("a") //→ "a"
//frontBack("ab") //→ "ba"



//Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

func front3(word: String) -> String {
    let count = word.characters.count
    let newWord = word
    
    if count < 3 {
        return word
    }
}