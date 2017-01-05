//
//  main.swift
//  CutUpText
//
//  Created by Adrian McDaniel on 12/7/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

////// Tell me a story!

import Foundation


let letsStart = "Tell me a story! \n"
print(letsStart)

let instructions = "Your story should consist of three sentences. \n"
print(instructions)



//// Enter sentences


let enter1st = "Enter your first sentence."

func firstRequest(prompt: String) -> String {
    print(prompt)
    let input = readLine(strippingNewline: true)
    return input!
}

let enter2nd = "Enter your second sentence."

let firstSentence = firstRequest(prompt: enter1st)

func secondRequest(prompt: String) -> String {
    print(prompt)
    let input = readLine(strippingNewline: true)
    return input!
}

let secondSentence = secondRequest(prompt: enter2nd)

let enter3rd = "Enter your third sentence."

func thirdRequest(prompt: String) -> String {
    print(prompt)
    let input = readLine(strippingNewline: true)
    return input!
}

let thirdSentence = thirdRequest(prompt: enter3rd)




var sentences = [firstSentence, secondSentence, thirdSentence]



let normalSentences = sentences



//// Converting sentences to reverse and random

var reverseSentences = Array(sentences.reversed())


var randomSentences = [String]()



func random(lessThan upperLimit:Int) -> Int {
    precondition(upperLimit >= 0, "negative number provided to random(lessThan:)")
    return Int(arc4random_uniform(UInt32(upperLimit)))
}

while sentences.isEmpty == false {
    let index = random(lessThan: sentences.count)
    let pulled = sentences[index]
    sentences.remove(at: index)
    randomSentences.append(pulled)
}

print(normalSentences)

////////Printing selection of sentences

let options = "Would you like to see your story in reverse or random?  Yes or No?"


func chooseSelection(prompt: String) {
    print(prompt)
    if readLine(strippingNewline: true) == "Yes" {
        print("\(reverseSentences)\n")
        print(randomSentences)
    } else {
        print ("Nice Story!")
    }
}


let chosen = String(describing: chooseSelection(prompt: options))











