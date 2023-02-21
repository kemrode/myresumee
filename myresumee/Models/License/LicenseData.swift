//
//  LicenseData.swift
//  myresumee
//
//  Created by kevin fichou on 21/02/2023.
//

import Foundation
import UIKit

class LicenseData {
    
// MARK: - Civilian licenses
    var baccalaureat = License(image: UIImage(named: "licenseGetBlue")!, title: "Baccalauréat Scientifique, option Sciences de l'Ingénieur", year: "(2007)", military: false)
    var bafa = License(image: UIImage(named: "licenseGetBlue")!, title: "BAFA", year: "(2008)", military: false)
    var dut = License(image: UIImage(named: "licenseGetBlue")!, title: "DUT de Génie Electrique et Informatique Industrielle", year: "(2009)", military: false)
    var histoire = License(image: UIImage(named: "licenseGetBlue")!, title: "License d'Histoire et Sciences Sociales", year: "(2019)", military: false)
    var di = License(image: UIImage(named: "licenseGetBlue")!, title: "Développeur Informatique - alternance", year: "(2022)", military: false)
    
    var allCiviliansLicenses: [License] {
        return [baccalaureat, bafa, dut, histoire, di]
    }
    
// MARK: - Military licenses
    
    var maistrance = License(image: UIImage(named: "croiseurBleu")!, title: "Ecole de Maistrance", year: "(2010)", military: true)
    var opssoum = License(image: UIImage(named: "croiseurBleu")!, title: "BAT OPS.SOUM", year: "(2010)", military: true)
    var stageSNA = License(image: UIImage(named: "croiseurBleu")!, title: "Stage SNA", year: "(2010)", military: true)
    var ensm = License(image: UIImage(named: "croiseurBleu")!, title: "Ecole de Navigation Sous-Marine", year: "(2011)", military: true)
    var nacelle = License(image: UIImage(named: "croiseurBleu")!, title: "Pilote nacelle", year: "(2013)", military: true)
    var det = License(image: UIImage(named: "croiseurBleu")!, title: "BAT DETECTEUR", year: "(2017)", military: true)

    var allMilitaryLicenses: [License] {
        return[maistrance, opssoum, stageSNA, ensm, nacelle, det]
    }
    
// MARK: - All Licenses
    
    var allLicenses: [[License]]{
        return[allCiviliansLicenses, allMilitaryLicenses]
    }
}
