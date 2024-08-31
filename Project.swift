import ProjectDescription

let project = Project(
    name: "FocusMates",
    targets: [
        .target(
            name: "FocusMates",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.FocusMates",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["FocusMates/Sources/**"],
            resources: ["FocusMates/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "FocusMatesTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FocusMatesTests",
            infoPlist: .default,
            sources: ["FocusMates/Tests/**"],
            resources: [],
            dependencies: [.target(name: "FocusMates")]
        ),
    ]
)
