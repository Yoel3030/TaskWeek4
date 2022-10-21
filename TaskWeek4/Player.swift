//
//  PLayer.swift
//  TaskWeek4
//
//  Created by Yoel Jacho on 14/10/22.
//

import Foundation

class Player : DataPlayer {
    
    init(playerName:String, teamName:String, imagePlayer:String, playerDescription:String){
        
        title = playerName
        subtitle = teamName
        imageUrl = imagePlayer
        description = playerDescription
        
    }
    
    var imageUrl: String = ""
    var title: String = ""
    var subtitle: String = ""
    var description: String = ""
    
    func getImageUrl() -> String {
        return imageUrl
    }
    
    func getTitle() -> String {
        return title
    }
    
    func getSubtitle() -> String {
        return subtitle
    }
    
    func getDescription() -> String {
        return description
    }
    
    func setImageUrl(url: String) {
    }
    
    func setTitle(title: String) {
    }
    
    func setSubtitle(subtitle: String) {
    }
    
    func setDescription(description: String) {
    }
    
    
}
