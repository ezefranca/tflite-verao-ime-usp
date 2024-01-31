//
//  Aula2View.swift
//  tflite-verao-ime-usp
//
//  Created by Ezequiel dos Santos on 31/01/2024.
//

import SwiftUI
import TensorFlowLite

struct Aula2View: View {
    @State private var outputLog = ""

    var body: some View {
        ScrollView {
            Text(outputLog)
                .padding()
        }
        .onAppear {
            classifySequence()
        }
    }

    func classifySequence() {
        guard let modelPath = Bundle.main.path(forResource: "model_aula2", ofType: "tflite") else {
            print("Failed to load the model")
            return
        }

        do {
            let interpreter = try Interpreter(modelPath: modelPath)
            try interpreter.allocateTensors()

            // Input data
            let inputs: [[Float32]] = [
                [0.3, 0.8, 0.4, 0.5],
                [0.4, 0.1, 0.8, 0.5],
                [0.7, 0.9, 0.8, 0.4]
            ]

            var outputStr = ""

            for input in inputs {
                var inputData = Data()
                for i in 0..<input.count {
                    var value = input[i]
                    let bytes = withUnsafeBytes(of: &value) { Data($0) }
                    inputData.append(bytes)
                }

                try interpreter.copy(inputData, toInputAt: 0)
                try interpreter.invoke()

                let outputTensor = try interpreter.output(at: 0)
                let results: [Float32] = [Float32](unsafeData: outputTensor.data) ?? []

                outputStr += "Output: \(results)\n"
            }

            self.outputLog = outputStr

        } catch let error {
            print("Failed to create the interpreter with error: \(error.localizedDescription)")
        }
    }
}

extension Array where Element: FloatingPoint {
    init?(unsafeData: Data) {
        guard unsafeData.count % MemoryLayout<Element>.stride == 0 else { return nil }
        self = unsafeData.withUnsafeBytes {
            .init(UnsafeBufferPointer<Element>(start: $0, count: unsafeData.count / MemoryLayout<Element>.stride))
        }
    }
}


#Preview {
    Aula2View()
}
