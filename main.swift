import SwiftUI
import UIKit
import Foundation


let V: [[Int]] = [
    [0,1,0],
    [0,1,0],
    [0,0,2]
]

let inputs = [3,3,2,2]



func Andar(Vetor: [[Int]]) {
    var i: Int = 0
    var tesouro_encontrado: Bool = false
    var posicao = V[0][0]
    print("Para qual direcao voce quer andar? Digite a letra.")
    while(!tesouro_encontrado || i < inputs.count){
        print("i =", i)
        var direcao = inputs[i]
        if(direcao == 1){
            if (!(posicao == V[0][0] || posicao == V[1][0] || posicao == V[2][0])){
                posicao = V[i][i-1]
                print(posicao)
            }
            else{
                print("Nao e possivel andar nessa direcao")
            }
        }
        if(direcao == 2){
            if (!(posicao == V[0][2] || posicao == V[1][2] || posicao == V[2][2])){
                posicao = V[i][i+1]
                print(posicao)
            }
            else{
                print("Nao e possivel andar nessa direcao")
            }
        }
        if(direcao == 3){
            if (!(posicao == V[2][0] || posicao == V[2][1] || posicao == V[2][2])){
                posicao = V[i+1][i]
                print(posicao)
            }
            else{
                print("Nao e possivel andar nessa direcao")
            }
        }
        if(direcao == 4){
            if (!(posicao == V[0][0] || posicao == V[1][0] || posicao == V[2][0])){
                posicao = V[i][i - 1]
                print(posicao)
            }
            else{
                print("Nao e possivel andar nessa direcao")
            }
        }
        i+=1
        if(posicao == 2){
            tesouro_encontrado = true
        }
    }
    print("Tesouro encontrado! Parabens!")
}

print(V)
Andar(Vetor: V)

