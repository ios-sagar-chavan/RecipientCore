//
//  File.swift
//  
//
//  Created by Sagar C on 17/03/20.
//

import Foundation
import Framework

public protocol RecipientDelegate: AnyObject {
    func didReceiveResponse(data: Weather)
}

open class Recipient : APICoreDelegate {
    public static let `default` = Recipient()
    public var delegate: RecipientDelegate?
    
    open func giveAPICall(){
        let lat = "18.5167"
        let long = "73.856255"
        let appid = "e7b2054dc37b1f464d912c00dd309595"
        let units = "Metric"
        let url:String="https://api.openweathermap.org/data/2.5/weather?lat="+lat+"&lon="+long+"&appid="+appid+"&units="+units
        let requestDic:Dictionary<String, Any>? = nil
        APIFramework.processApiCall(url: url, method: .get, parameters: requestDic ?? [:])
        APIFramework.delegate = self
    }
    
    public func didReceiveData(data: Data) {
        let decoder = JSONDecoder()
        let weather = try? decoder.decode(Weather.self, from: data)
        if let weather = weather {
            self.delegate?.didReceiveResponse(data: weather)
        } else {}
    }
}
