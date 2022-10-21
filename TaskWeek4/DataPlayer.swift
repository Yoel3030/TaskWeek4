//
//  DataPlayer.swift
//  TaskWeek4
//
//  Created by Yoel Jacho on 14/10/22.
//

import Foundation

protocol DataPlayer{
    
    var imageUrl : String{get set}
    var title : String{get set}
    var subtitle : String{get set}
    var description : String{get set}
    
    
    //Getters
    
    func getImageUrl()->String
    func getTitle()->String
    func getSubtitle()->String
    func getDescription()->String
    
    
    //Setters
    
    func setImageUrl(url:String)
    func setTitle(title:String)
    func setSubtitle(subtitle:String)
    func setDescription(description:String)
}
