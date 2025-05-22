//
//  SearchObserableObject.swift
//  NIC
//
//  Created by Cameron Slaughter on 5/14/25.
//

import Foundation


class SearchObserableObject: ObservableObject {
<<<<<<< HEAD

=======
>>>>>>> main
    var data: [Topic] = [ Topic(name: "Accessibility", symbol: "figure.roll", description: "Design apps usable by everyone, including those with disabilities.", link: "https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/"),
                          Topic(name: "Adaptivity", symbol: "rectangle.3.offgrid.bubble.left", description: "Create interfaces that adapt to different screens and contexts.", link: "https://developer.apple.com/design/human-interface-guidelines/platforms/adaptivity/"),
                          Topic(name: "Aesthetic Integrity", symbol: "paintpalette", description: "Align appearance with function to enhance user trust and experience.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/aesthetic-integrity/"),
                          Topic(name: "Clarity", symbol: "eye", description: "Present content and actions clearly through typography, layout, and color.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/clarity/"),
                          Topic(name: "Consistency", symbol: "square.grid.2x2", description: "Use familiar design patterns and behaviors to reduce cognitive load.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/consistency/"),
                          Topic(name: "Deference", symbol: "arrow.up.left.and.arrow.down.right", description: "Allow content to stand out while keeping UI controls unobtrusive.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/deference/"),
                          Topic(name: "Depth", symbol: "cube", description: "Use depth to establish visual hierarchy and convey interactivity.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/depth/"),
                          Topic(name: "Icons", symbol: "app", description: "Use SF Symbols and system icons effectively and consistently.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/icons/"),
                          Topic(name: "Typography", symbol: "textformat", description: "Use text styles and typographic systems for clear communication.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/typography/"),
<<<<<<< HEAD
                          Topic(name: "User Control", symbol: "slider.horizontal.3", description: "Empower users by giving them control over actions and preferences.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/user-control/")    ]

=======
                          Topic(name: "User Control", symbol: "slider.horizontal.3", description: "Empower users by giving them control over actions and preferences.", link: "https://developer.apple.com/design/human-interface-guidelines/foundations/user-control/") ]
>>>>>>> main
    @Published var searchResults: [Topic] = []
    
    init() {
        data = MockService.shared.getData()
    }
}
