//
//  ViewModel.swift
//  marubatuGame
//
//  Created by 西澤 耕平 on 2022/05/10.
//

import Foundation
import SwiftUI


class ContentViewModel: ObservableObject{
    @Published var turn : Bool = false
    @Published var btntxt : [String] = [" "," "," "," "," "," "," "," "," "]
    @Published var marubatu : [Int] = [0,0,0,0,0,0,0,0,0]
    @Published var maru :String = "○"
    @Published var batu :String = "×"

    func tap(btnnum: Int){
    if(marubatu[btnnum] == 0){
        
        if(turn == false){
        btntxt[btnnum] = maru
    }else{
        btntxt[btnnum] = batu
    }
    
    turn.toggle()
        marubatu[btnnum] += 1
        
    }
    
}
    
    
    func reset(){
        turn = false
        
        for i in 0..<9{
            
            btntxt[i] = " "
            
        }
        
        for i in 0..<9{
            
            marubatu[i] = 0
            
        }
        
//        btntxt[0] = " "
//        btntxt[1] = " "
//
//        marubatu[0] = 0
//        marubatu[1] = 0
//
        
        
    }
    


}
