//
//  MapViewController.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 02/12/22.
//

import Foundation
import SwiftUI


class MapViewController: MapViewControllerProtocol{
    
    let locationStore: [String: [Location]]
    
    init(){
        locationStore = LocationStore().modelDict
    }
    
    func setupList(sportName: String) -> [Location]{
        var locationList: [Location] = []
        
        for (sportKey, localValue) in locationStore {
            if(sportKey == sportName){
                for location in localValue {
                    locationList.append(location)
                }
            }
        }
        return locationList
    }
}
