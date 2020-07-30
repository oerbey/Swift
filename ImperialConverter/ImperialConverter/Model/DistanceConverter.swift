//
//  DistanceConverter.swift
//  ImperialConverter
//
//  Created by Onur Erbey on 26.07.2020.
//  Copyright © 2020 Onur Erbey. All rights reserved.
//

import Foundation
class DistanceConverter {
    class func convertDist(forMiles mile: Double) -> Double {
        return(mile * 1.609344)
        //return(mile * 1.609347)
    }
    class func converKM(forKm km: Double) -> Double {
        return(km * 0.6213712)
    }
    
    class func convertPound(forPound pound: Double) -> Double {
        return(pound * 0.4535824)
    }
    
    class func convertKg(forKg kg: Double) -> Double {
        return(kg * 2.204623)
    }
}

