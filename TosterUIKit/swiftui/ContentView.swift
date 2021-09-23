import SwiftUI

struct ContentView: View {
    @State var nav = false

    @State var isRefreshingCards = false

    @State var text = ""
    var body: some View {
        List {

            VStack {
                Color.yellow.frame(width: 100, height: 200)
            }
        }.refreshable {
                    await raiseHand()
        }

        .navigationTitle("Navigation")
        .toolbar(content: {
            NavigationLink(destination: SecondView(text: $text)) {
                Text("Show Detail View")
            }
        })
    }

    @available(iOS 15.0, *)
    private func raiseHand() async {
        await withCheckedContinuation { continuation in
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(11)) {
                continuation.resume()
            }
        }
    }
}

struct SecondView: View {
    @Binding var text: String

    var body: some View {
        VStack {
            Text("This is the detail view")
            Spacer()
            Text("Some text")
        }
        .navigationTitle("Second")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
