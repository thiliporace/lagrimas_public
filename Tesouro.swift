let V: [[Int]] = [
    [0,1,0],
    [0,1,0],
    [0,0,2]
]

let inputs = [3,3,2,2]

func Andar(Vetor: [[Int]]) {
    var index: Int = 0
    var tesouro_encontrado: Bool = false
    // usamos duas variaveis para trabalhar com a posicao ou poderia usar uma tupla exemplo "posicao = (0, 0)" ultiliza a tupla com sinal de ponto tipo posicao.0
    var i = 0 
    var j = 0
    print("Para qual direcao voce quer andar? Digite a letra.")
    while(!tesouro_encontrado && index < inputs.count){
        print("index =", index)
        let direcao = inputs[index]
        switch direcao {
        case 1: //  esquerda
            if j > 0 {
                j -= 1
            } else {
                print("Nao e possivel andar nessa direcao")
            }
        case 2: // direita
            if j < Vetor[i].count - 1 {
                j += 1

            } else {
                print("Nao e possivel andar nessa direcao")
            }
        case 3: // baixo
            if i < Vetor.count - 1 {
                i += 1
            } else {
                print("Nao e possivel andar nessa direcao")
            }
        case 4: // cima
            if i > 0 {
                i -= 1
            } else {
                print("Nao e possivel andar nessa direcao")
            }
        default:
            print("Direcao invalida")
        }
        index += 1
        if Vetor[i][j] == 2 {
            tesouro_encontrado = true
        }
    }
    if tesouro_encontrado {
        print("Tesouro encontrado! Parabens!")
    } else {
        print("Nao foi possível encontrar o tesouro!")
    }
}

print(V)
Andar(Vetor: V)
