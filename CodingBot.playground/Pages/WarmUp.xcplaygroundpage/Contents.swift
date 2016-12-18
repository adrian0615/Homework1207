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
    
    if count <= 1 {
        return word
    }
    var newWord = word
    let firstLetter = newWord.remove(at: newWord.startIndex)
    let findLast = newWord.index(before: newWord.endIndex)
    let lastLetter = newWord.remove(at: findLast)
    
    newWord.append(firstLetter)
    newWord.insert(lastLetter, at: (newWord.startIndex))
    
    return newWord
}





frontBack(word: "code") //→ "eodc"
frontBack(word: "t")
frontBack(word: "ab") //→ "ba"



//Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

func front3(word: String) -> String {
    let count = word.characters.count
    
    if count <= 3 {
        return word + word + word
    } else {
        var newWord = word
        var front = newWord.characters.count.distance(to: 2)
        return word
        
    }
    
    }

    





front3(word: "Java") //"JavJavJav"
front3(word: "Chocolate")  //"ChoChoCho"
front3(word: "abc")  //"abcabcabc"





//Given a string, take the last char and return a new string with the last char added at the front and back, so "cat" yields "tcatt". The original string will be length 1 or more.

func backAround(word: String) -> String {
    let count = word.characters.count
    
    if count <= 1 {
        return word
    } else {
        var newWord = word
        let findLast = newWord.index(before: newWord.endIndex)
        let lastLetter = newWord.remove(at: findLast)
        newWord.append(lastLetter)
        newWord.append(lastLetter)
        newWord.insert(lastLetter, at: newWord.startIndex)
        return newWord
}
}


backAround(word: "cat") //→ "tcatt"
backAround(word: "Hello") //→ "oHelloo"
backAround(word: "a") //→ "aaa"



//Return true if the given non-negative number is a multiple of 3 or a multiple of 5. 


func or35(n: Int) -> Bool {
    if n % 3 == 0 || n % 5 == 0 {
        return true
    } else {
        return false
    }
}


or35(n: 3) //→ true
or35(n: 10) //→ true
or35(n: 8) //→ false


//Given a string, take the first 2 chars and return the string with the 2 chars added at both the front and back, so "kitten" yields"kikittenki". If the string length is less than 2, use whatever chars are there.


//front22("kitten") //→ "kikittenki"
//front22("Ha") //→ "HaHaHa"
//front22("abc") //→ "ababcab"




//Given a string, return true if the string starts with "hi" and false otherwise.


//startHi("hi there") → true
//startHi("hi") → true
//startHi("hello hi") → false


//Given 2 int values, return true if either of them is in the range 10..20 inclusive.




//in1020(12, 99) → true
//in1020(21, 12) → true
//in1020(8, 99) → false



//Given a string, if the string "del" appears starting at index 1, return a string where that "del" has been deleted. Otherwise, return the string unchanged.



//delDel("adelbc") → "abc"
//delDel("adelHello") → "aHello"
//delDel("adedbc") → "adedbc"




//Return true if the given string begins with "mix", except the 'm' can be anything, so "pix", "9ix" .. all count.




//mixStart("mix snacks") → true
//mixStart("pix snacks") → true
//mixStart("piz snacks") → false



//Given three int values, a b c, return the largest.

func intMax(a: Int, b: Int, c: Int) -> Int {
    var max = 0
    
    if a > b {
        max = a
    } else {
        max = b
    }
    if c > max {
        max = c
    }
    return max
}


intMax(a: 1, b: 2, c: 3) //→ 3
intMax(a: 1, b: 3, c: 2) //→ 3
intMax(a: 3, b: 2, c: 1) //→ 3


//Given 2 int values, return whichever value is nearest to the value 10, or return 0 in the event of a tie. Note that Math.abs(n) returns the absolute value of a number.

func close10(a: Int, b: Int) -> Int {
    let aDiff = abs(a.distance(to: 10))
    let bDiff = abs(b.distance(to: 10))
    if aDiff < bDiff {
        return a
    } else if bDiff < aDiff {
        return b
    } else {
        return 0
    }
}



close10(a: 8, b: 13) //→ 8
close10(a: 13, b: 8) //→ 8
close10(a: 13, b: 7) //→ 0


// Return true if the given string contains between 1 and 3 'e' chars.





//stringE("Hello") → true
//stringE("Heelle") → true
//stringE("Heelele") → false



//Given a string, return a new string where the last 3 chars are now in upper case. If the string has less than 3 chars, uppercase whatever is there. Note that str.toUpperCase() returns the uppercase version of a string.



//endUp("Hello") → "HeLLO"
//endUp("hi there") → "hi thERE"
//endUp("hi") → "HI"


//Given a non-empty string and an int N, return the string made starting with char 0, and then every Nth char of the string. So if N is 3, use char 0, 3, 6, ... and so on. N is 1 or more.




//everyNth("Miracle", 2) → "Mrce"
//everyNth("abcdefg", 2) → "aceg"
//everyNth("abcdefg", 3) → "adg"
