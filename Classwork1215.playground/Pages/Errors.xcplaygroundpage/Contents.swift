//Typically start with an enum for your type.  If it's wrong move to other type
//If you are creating an error type 99% of the time it should be an enum

enum PhoneNumberSavingError : Error {
    case invalidCharacters
    case incorrectLength(Int)
    case invalidAreaCode
    case invalidCountryCode
    
}
//above type only shows all the things that could go wrong!

//throws means that it can throw and error
//simple case of throwing and catching
func savePhoneNumber(input: String) throws {
    if input.isEmpty {
        throw PhoneNumberSavingError.incorrectLength(input.characters.count)
    }
    throw PhoneNumberSavingError.invalidCharacters
}
//simple do-catch
do {
    try savePhoneNumber(input: "404-352-9999")
} catch {
    print(error)
}

//less simple do-catch

do {
    try savePhoneNumber(input: "")
} catch PhoneNumberSavingError.invalidCharacters {
    print(" You've entered invalid characters")
} catch PhoneNumberSavingError.incorrectLength(let length) {
    print("\(length) characters is incorrect")
}  catch {
    print(error)
}
//shorthand try? error handling  (more like a true false like if I did get nothing or a did)
if let _ = try? savePhoneNumber(input: "") {
    print("success")
} else {
    print("We failed and I don't care why")
}

//shorthand try! error handling  (force try)(Means if wrong don't even bother)
try! savePhoneNumber(input: "8675309") {
    print("success")

}



