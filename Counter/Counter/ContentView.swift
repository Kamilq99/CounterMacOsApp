import SwiftUI

struct ContentView: View {
    
    @ObservedObject var counter = CounterModel()
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Count: \(counter.count) times")
                .font(.system(size: 28, weight: .semibold))
                .foregroundColor(.primary)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.15))
                )
                .accessibilityIdentifier("countLabel")  // Add accessibility identifier here

            Button(action: {
                counter.increment()
            }) {
                Text("Click me!")
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.accentColor.opacity(0.2))
                    )
            }
            .buttonStyle(PlainButtonStyle())
            .accessibilityIdentifier("incrementButton")  // Add accessibility identifier here

            Button(action: {
                counter.reset()
            }) {
                Text("Reset")
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.2))
                    )
            }
            .buttonStyle(PlainButtonStyle())
            .accessibilityIdentifier("resetButton")  // Add accessibility identifier here
        }
        .padding(30)
        .frame(width: 320)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(NSColor.windowBackgroundColor))
                .shadow(radius: 12)
        )
        .padding()
    }
}

#Preview {
    ContentView()
}
