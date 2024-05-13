//
//  RestrictCharacter.swift
//  Validation_New
//
//  Created by PHN MAC 1 on 13/10/23.
//

import Foundation

final class RestrictCharacter{
    func onlyAlphabet(string: String)->Bool{
        let characterSet = CharacterSet(charactersIn: string)
        let allowedCharacters = CharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    func onlyAlphabetWithoutSpace(string: String)->Bool{
        let characterSet = CharacterSet(charactersIn: string)
        let allowedCharacters = CharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ '")
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    func onlyNumber(string: String,maxNumber: Int, txtString: String, range: NSRange)->Bool{
        let characterSet = CharacterSet(charactersIn: string)
        let currentString = txtString as NSString
        let newString: NSString =  currentString.replacingCharacters(in: range, with: string) as NSString
        let maxCharacter = newString.length <= maxNumber //Max length
        let allowedCharacters = CharacterSet.decimalDigits
        return allowedCharacters.isSuperset(of: characterSet) && maxCharacter
    }
}
