//
//  MapViewControllerProtocol.swift
//  Qatar-Challenge WatchKit Extension
//
//  Created by jpcm2 on 02/12/22.
//

import Foundation
import SwiftUI


protocol MapViewControllerProtocol{
    func setupList(sportName: String) -> [Location]
}
