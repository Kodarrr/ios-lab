//
//  game_ui.swift
//  lab_assignment2007090
//
//  Created by Gaming Lab on 19/11/24.
//

import SwiftUI

struct game_ui: View {
    @State private var useranswer: String=""
    @State private var num1=Int.random(in: 10...500)
    @State private var num2=Int.random(in: 10...500)
    @State private var score=0
    var body: some View {
        VStack{
            Text("Math Game")
                .fontWeight(.bold)
                .padding(20)
            Text(" \(num1) + \(num2) ?")
                .font(.title3)
            TextField("enter answer",text: $useranswer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            Button(action:{checkAnswer()}){
                Text("Submit").padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            
            Text("Score:\(score)")
                .fontWeight(.bold)
                .padding(20)
            
            
        }
    }
    private func checkAnswer(){
        let curr=num1+num2
        let user_ans=Int(useranswer)
        if curr==user_ans{
            score+=1
        }
        else{
            score-=1;
        }
        
        num1=Int.random(in: 10...500)
        num2=Int.random(in: 10...500)
        useranswer=""
    }
}

struct game_ui_Previews: PreviewProvider {
    static var previews: some View {
        game_ui()
    }
}
