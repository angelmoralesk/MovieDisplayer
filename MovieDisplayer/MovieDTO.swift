//
//  MovieDTO.swift
//  MovieDisplayer
//
//  Created by Morales, Angel (MX - Mexico) on 15/09/18.
//  Copyright © 2018 TheKairuz. All rights reserved.
//

import Foundation

struct MovieDTO {
    
    let name : String
    let imageName : String
    let type : String
    let length : String
    let rooms : [RoomDTO]
    
    static func makeMovies() -> [MovieDTO] {
        
        let venomSubRoom = RoomDTO(type: "SUB", hours: ["10:00am", "11:30am", "1:00pm", "2:30pm"])
        let venom3DXRoom = RoomDTO(type: "3DX", hours: ["10:00am", "11:30am", "1:00pm", "2:30pm", "4:00pm", "7:00pm", "9:00pm", "12:00pm"])

        let venomMovie = MovieDTO(name: "Venom", imageName: "venom", type: "Acción", length: "120min", rooms: [venomSubRoom, venom3DXRoom])
       
        return [venomMovie, venomMovie, venomMovie]
    }
    
}

struct RoomDTO {
    let type : String
    let hours : [String]
}
