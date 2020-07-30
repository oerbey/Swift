//
//  ViewController.swift
//  ImperialConverter
//
//  Created by Onur Erbey on 26.07.2020.
//  Copyright © 2020 Onur Erbey. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var milesTxt: distanceTxtField!
    @IBOutlet weak var kmsTxt: distanceTxtField!
    @IBOutlet weak var distanceResultLbl: UILabel!
    @IBOutlet weak var TypeLbl: UILabel!
    @IBOutlet weak var poundTxt: distanceTxtField!
    @IBOutlet weak var kgTxt: distanceTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.height, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.8478488116)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        milesTxt.inputAccessoryView = calcBtn
        kmsTxt.inputAccessoryView = calcBtn
        poundTxt.inputAccessoryView = calcBtn
        kgTxt.inputAccessoryView = calcBtn
        
        distanceResultLbl.isHidden = true
        TypeLbl.isHidden = true
    }
    @objc func calculate() {
        if milesTxt != nil {
            if let milesTxt = milesTxt.text {
            if let mile = Double(milesTxt) {
                view.endEditing(true)
                distanceResultLbl.isHidden = false
                TypeLbl.isHidden = false
                distanceResultLbl.text = "\(DistanceConverter.convertDist(forMiles: mile))"
                TypeLbl.text = "KM"
                kmsTxt.text = "\(DistanceConverter.convertDist(forMiles: mile))"
                }
            }
        }
        
        if kmsTxt != nil {
            if let kmsTxt = kmsTxt.text {
                if let km = Double(kmsTxt) {
                    view.endEditing(true)
                    distanceResultLbl.isHidden = false
                    TypeLbl.isHidden = false
                    milesTxt.text = "\(DistanceConverter.converKM(forKm: km))"
                    distanceResultLbl.text = "\(DistanceConverter.converKM(forKm: km))"
                    TypeLbl.text = "Miles"
                           
                       }
                   }
            }
  
        if poundTxt != nil {
            if let poundTxt = poundTxt.text {
                if let pound = Double(poundTxt) {
                    view.endEditing(true)
                    distanceResultLbl.isHidden = false
                    TypeLbl.isHidden = false
                    distanceResultLbl.text = "\(DistanceConverter.convertPound(forPound: pound))"
                    TypeLbl.text = "KG"
              //      kgTxt.text = "\(DistanceConverter.convertKg(forKg: kg))"
                }
            }
        }
        
        if kgTxt != nil {
            if let kgTxt = kgTxt.text {
                if let kg = Double(kgTxt) {
                    view.endEditing(true)
                    distanceResultLbl.isHidden = false
                    TypeLbl.isHidden = false
                    distanceResultLbl.text = "\(DistanceConverter.convertKg(forKg: kg))"
                    TypeLbl.text = "Pounds"
             //       milesTxt.text = "\(DistanceConverter.convertPound(forPound: pound))"
                }
            }
        }
    }

    @IBAction func ClearCalc(_ sender: Any) {
        distanceResultLbl.isHidden = true
        TypeLbl.isHidden = true
        milesTxt.text = nil
        kmsTxt.text = nil
        poundTxt.text = nil
        kgTxt.text = nil
    }
}

