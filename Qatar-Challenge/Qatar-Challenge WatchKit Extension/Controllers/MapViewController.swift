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
    
    func setupList() -> [Location]{
        var locationList: [Location] = []
        
        for (_, localValue) in locationStore {
            for location in localValue {
                locationList.append(location)
            }
        }
        return locationList
    }
}
