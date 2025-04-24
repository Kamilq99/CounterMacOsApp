import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Count: \(count) times")
                .font(.system(size: 28, weight: .semibold))
                .foregroundColor(.primary)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.15))
                )

            Button(action: {
                count += 1
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

            Button(action: {
                count = 0
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
