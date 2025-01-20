//
//  RMService.swift
//  RickAndMorty2
//
//  Created by Gro Sandvik on 20/01/2025.
//

import Foundation
/// Primary API service object to get Rick and Morty Data
final class RMService {
    ///Sjhare singleton instance
    static let shared = RMService()
    
    private init() {}
    
    ///Send Rich and Morty API Call
    /// -Parameters
    ///  -requests: Request instance
    ///  - completion: Callback with data or error
    //making this an escaping closure where we get no argument back
    public func execute(_ request: RMRequest, completion: @escaping () -> Void ) {
    }
}
