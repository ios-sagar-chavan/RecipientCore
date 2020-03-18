//
//  Weather.swift
//  UnitTestDemo
//
//  Created by Amol B on 26/02/20.
//  Copyright © 2020 Amol B. All rights reserved.
//

import Foundation

public struct Weather: Decodable {

    public var base:String?
    var dt:Double?
    public var timezone:Double?
    var id:Double?
    public var name:String?
    var cod:Double?
    var coord:Coord?
    var weather:Array<WeatherDescription>
   // var main:Main?
    var wind:Wind?
    var clouds:Clouds?
    var sys:Sys?
        
    internal init(base: String?, dt: Double?, timezone: Double?, id: Double?, name: String?, cod: Double?, coord: Coord?, weather: Array<WeatherDescription>?, wind: Wind?, clouds: Clouds?, sys: Sys?) {
        
           self.base = base
           self.dt = dt
           self.timezone = timezone
           self.id = id
           self.name = name
           self.cod = cod
           self.coord = coord
           self.weather = weather!
           self.wind = wind
           self.clouds = clouds
           self.sys = sys
    }

}
