//
//  RMEndpoint.swift
//  RickAndMorty2
//
//  Created by Gro Sandvik on 20/01/2025.
//

import Foundation



//Various paths we can go down to get information. episode, location, character.
//what is a enum?
//making the num type String makes the "case character" spit out a string
//@frozen is a prefix enotation (will be covered in a later video, currently at video 2)
///Represents unique API endpoints.
@frozen enum RMEndpoint: String {
    ///Enpoint to get charater info
    case character
    ///Enpoint to get location info
    case location
    ///Enpoint to get episode info
    case episode
    
}

