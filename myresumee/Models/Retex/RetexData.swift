//
//  RetexData.swift
//  myresumee
//
//  Created by kevin fichou on 26/02/2023.
//

import UIKit

class RetexData {
    
// MARK: - Developper Retex
    var di = Retex(
        image: UIImage(named: "developerIcon")!,
        title: "Développeur Informatique",
        typeOfRetex: RetexType.developper.data,
        retexExplanation: "A la suite de la fin de mon contrat dans la Marine Nationale, j'ai engagé une reconversion professionnelle dans le domaine de la programmation informatique. J'ai alors rejoins le cursus Développeur Informatique du CESI de Rouen en alternance et j'ai été recruté par l'entreprise Budgetbox. Dès lors, j'avais pour objectif d'apporter les améliorations tehcniques et de corriger les bogues sur le produit phare de l'entreprise avec les technologies Apple, principalement Objectiv-C. Puis, j'ai été en charge de la réalisation de la nouvelle version de l'application de démonstration de l'entreprise, destinée aux commerciaux de Budgetbox afin qu'ils puissent démarcher de nouveaux clients. Cette application a été réalisée avec le langage d'Apple moderne : SWIFT.")
    
    var cda = Retex(
        image: UIImage(named: "developerIcon")!,
        title: "Concepteur et développeur d'applciations",
        typeOfRetex: RetexType.developper.data,
        retexExplanation: "Ayant réussi à valider mon cursus de Développeur Informatique, j'ai continué le parcours de reconversion en intégrant, toujours au CESI et en alternance, la formation de bachelor Concepteur et Développeur d'Application. Au sein de l'entreprise, je restais en charge du maintien à niveau et des correctifs du produit, avec Obj-C, ainsi que de la finition de l'application de démonstration en SWIFT. Mais, je fus également versé dans le projet de Front-end d'une application web destinée aux clients de Budgetbox, en Angular.")
    var allDevelopperRetex: [Retex] {
        return [di, cda]
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
    
    var chefPassifGEACN = Retex(
        image: UIImage(named: "helmet")!,
        title: "chef d'équipe passive Guerre Electronique sur FLF",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Nouvelle affectation sur frégate, comme chef d'équipe passive du secteur Guerre Electronique. En charge de l'entretien du matériel de détection de radar et des appareils de contre-mesures (Softkill), comme chef de l'équipe Passive.A la mer, j'occupais le poste de veilleur Guerre Electronique (avec pour objectif d'identifier les radars interceptés et leur porteur), ainsi que le poste d'adjudant de Central Opération (tenue de la situation tactique et opérationnelle, conformité des liaisons radios et du matériel du Central Opération)")
    
    var preMar = Retex(
        image: UIImage(named: "helmet")!,
        title: "Bureau Approches Maritimes",
        typeOfRetex: RetexType.military.data,
        retexExplanation: "Suite à un accident en service, j'ai été muté à la préfecture maritime du Var, au bureau des approches maritimes. Mon travail consistait alors à tenir à jour la situation dans les zones d'exercices, ainsi que la situation quotidienne de l'état du trafic naval militaire dans les approches maritimes françaises de Méditerranée. J'étais également en charge de la relation avec les organismes civils scientifiques afin de les répertorier et assurer leur sécurité nautique vis-à-vis des exercices militaires.")
    
    var allMilitaryRetex: [Retex] {
        return [sna, elaborateurTactique,chefPassifGELFY, equipierGEJDV, chefPassifGEACN, preMar]
    }
    
// MARK: - Civilian Retex
    
    var bafa = Retex(
        image: UIImage(named: "developerIcon")!,
        title: "Animateur en centre de loisirs",
        typeOfRetex: RetexType.civilian.data,
        retexExplanation: "Après avoir obtenu mon diplôme du BAFA, j'ai occupé des postes sur le temps des vacances scolaires en tant qu'animateur en centre de loisirs. J'ai eu à m'occuper de groupes d'enfants allant de 2 ans et 1/2 à 12 ans.")
    
    var allCivilianRetex: [Retex] {
        return [bafa]
    }
}
