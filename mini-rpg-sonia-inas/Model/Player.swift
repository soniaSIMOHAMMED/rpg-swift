//
//  Player.swift
//  mini-rpg-sonia-inas
//
//  Created by Sonia  on 07/07/2022.
//

import Foundation

class Player {
    
    var nom: String
    var sexe: String
    var taille: String
    var niveau: Int
    var xp: Int
    var vp: Int
    
    
    init(nom: String, sexe: String, taille: String, niveau: Int, xp: Int, vp: Int){
        
        self.nom = nom
        self.sexe = sexe
        self.taille = taille
        self.niveau = niveau
        self.xp = xp
        self.vp = vp
        
    }
    
    
    
    
}
