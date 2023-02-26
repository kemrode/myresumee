//
//  RetexData.swift
//  myresumee
//
//  Created by kevin fichou on 26/02/2023.
//

import UIKit

class RetexData {
    
// MARK: - Civilian Retex
    var allCivilianRetex: [Retex] {
        return []
    }
    
// MARK: - Military Retex
    var sna = Retex(
        image: UIImage(named: "helmet")!,
        title: "Adjoint Service Détection SNA",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Adjoint au chef de secteur du service Détection Au-Dessus de la surface.\nChargé de la maintenance des appareils de détection radar et de l'intercepteur de radar, j'occupais également, en patrouille sous-marine, le poste de veilleur sonar, alors chargé de la détection de tous mobiles opérant sous la surface de l'eau, à la surface ou encore au-dessus de la surface.")
    
    var elaborateurTactique = Retex(
        image: UIImage(named: "helmet")!,
        title: "Elaborateur tactique",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Toujours adjoint au chef de secteur du service Détection Au-Dessus de la surface.\nChargé, là également, de la maintenance des appareils de détection radar et de l'intercepteur de radar. En mer, mon travail consistait alors à travailler à partir des élements envoyés par les veilleurs sonar pour déterminer, Route, Vitesse et Distance des bruiteurs détectés au sonar")
    
    var chefPassifGELFY = Retex(
        image: UIImage(named: "helmet")!,
        title: "chef d'équipe passive Guerre Electronique sur FLF",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Après une réaffectation, je suis arrivé sur frégate, comme équipier Guerre Electronique. J'étais alors en charge de l'entretien et de l'utilisation des matériels de détections de radar et des appareils de contre-mesures (SoftKill), en tant que chef de l'équipe Passive. A la mer, j'occupais le poste de veilleur Guerre Electronique (avec pour objectif d'identifier les radars interceptés et leur porteur), ainsi que le poste d'adjudant de Central Opération (tenue de la situation tactique et opérationnelle, conformité des liaisons radios et du matériel du Central Opération)")
    
    var equipierGEJDV = Retex(
        image: UIImage(named: "helmet")!,
        title: "équipier Guerre Electronique sur FASM",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Nouvelle affectation sur frégate, comme équipier Guerre Electronique. Là encore chargé de l'entretien et de l'utilisation des matériels de détection de radar et des appareils de contre-mesures (Softkill) du bâtiment. A la mer, j'occupais le poste de veilleur Guerre Electronique (l'objectif étant d'identifier les radars interceptés et leur porteur, ainsi que la mise en oeuvre des brouilleurs installés sur le bâtiment).")
}
