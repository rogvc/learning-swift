import SwiftUI

@main // App's entry point
struct LandmarksApp: App { // LandmarkApp inherits from App, which requires a body.
    let persistenceController = PersistenceController.shared

    var body: some Scene { // Holds content that will be displayed
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
