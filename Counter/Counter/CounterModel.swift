import Foundation

class CounterModel: ObservableObject {
    @Published var count = 0

    func increment() {
        count += 1
    }

    func reset() {
        count = 0
    }
}
