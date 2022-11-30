//
//  LocationManager+CLLocationManagerDelegate .swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 30/11/22.
//

import Foundation
import CoreLocation

extension LocationManager: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        
        DispatchQueue.main.async {
            self.location = location
        }
    }
}
