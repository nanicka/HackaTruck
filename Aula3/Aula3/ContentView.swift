import SwiftUI

struct ContentView: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var corDeFundo: Color = .white
    @State private var imc: Float = 0
    @State private var resultado: String = " "

    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .padding()

                TextField("Digite seu peso: ", text: $peso)
                    .textFieldStyle(.roundedBorder)
                    .padding(40)
                    .keyboardType(.decimalPad)

                TextField("Digite sua altura: ", text: $altura)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 40)
                    .keyboardType(.decimalPad)

                Button(action: setarCor) {
                    Text("Calcular")
                }
                .buttonStyle(.borderedProminent)
                .padding()

                Spacer()

                Text("\(resultado)")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(60)

                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 400, height: 200)
                    .padding()
            }
            .background(corDeFundo)
            .padding()
        }
    }

    func setarCor() {
        guard let pesoValue = Float(peso), let alturaValue = Float(altura), alturaValue > 0 else {
            resultado = "Insira valores válidos."
            corDeFundo = .red
            return
        }

        imc = pesoValue / (alturaValue * alturaValue)

        if imc < 18.5 {
            corDeFundo = .baixoPeso // Baixo Peso
            resultado = "Baixo Peso"
        } else if imc < 24.99 {
            corDeFundo = .normal // Normal
            resultado = "Normal"
        } else if imc < 29.99 {
            corDeFundo = .sobrepeso // Sobrepeso
            resultado = "Sobrepeso"
        } else {
            corDeFundo = .obesidade // Obesidade
            resultado = "Obesidade"
        }
    }
}

#Preview {
    ContentView()
}
