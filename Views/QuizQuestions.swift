////
////  QuizQuestions.swift
////  NIC
////
////  Created by Mel Dozier on 4/29/25.
////
import Foundation

struct QuizQuestion {
    let question: String
    let answers: [String]
    let correctAnswer: String
}



struct QuizDatabase {
    static func getQuestions(for topic: Topic) -> [QuizQuestion] {
        switch topic.name{
        case "Design":
            return [
                // 20 Sample QuizQuestions for Design domain
                QuizQuestion(
                    question: "What is the focus of Human-Centered Design?",
                    answers: ["Accessibility", "Animation", "Marketing", "Speed"],
                    correctAnswer: "Accessibility"
                ),
                QuizQuestion(
                    question: "Human-Centered Design improves?",
                    answers: ["Revenue Only", "User Experience", "Performance", "Marketing Reach"],
                    correctAnswer: "User Experience"
                ),
                QuizQuestion(
                    question: "What should animations feel like?",
                    answers: ["Slow", "Distracting", "Delightful", "Pointless"],
                    correctAnswer: "Delightful"
                ),
                QuizQuestion(
                    question: "When are animations helpful?",
                    answers: ["Never", "When delaying tasks", "When confusing users", "When guiding user focus"],
                    correctAnswer: "When guiding user focus"
                ),
                QuizQuestion(
                    question: "Consistency in UI builds?",
                    answers: ["Confusion", "Trust", "Boredom", "Delay"],
                    correctAnswer: "Trust"
                ),
                QuizQuestion(
                    question: "Which helps consistency?",
                    answers: ["Random layouts", "Frequent redesigns", "Standard patterns", "Changing SF Symbols"],
                    correctAnswer: "Standard patterns"
                ),
                QuizQuestion(
                    question: "What is a primary goal of UI design?",
                    answers: ["Clarity", "Obfuscation", "Complexity", "Length"],
                    correctAnswer: "Clarity"
                ),
                QuizQuestion(
                    question: "Which color scheme is best for readability?",
                    answers: ["Random", "Low contrast", "Monotone", "High contrast"],
                    correctAnswer: "High contrast"
                ),
                QuizQuestion(
                    question: "What is whitespace used for?",
                    answers: ["Improving legibility", "Wasting space", "Hiding content", "Adding confusion"],
                    correctAnswer: "Improving legibility"
                ),
                QuizQuestion(
                    question: "Why use SF Symbols in UI?",
                    answers: ["To confuse users", "Decoration only", "Visual cues", "No reason"],
                    correctAnswer: "Visual cues"
                ),
                QuizQuestion(
                    question: "Good design is often described as?",
                    answers: ["Complicated", "Intuitive", "Distracting", "Annoying"],
                    correctAnswer: "Intuitive"
                ),
                QuizQuestion(
                    question: "What does 'responsive design' mean?",
                    answers: ["Adapts to devices", "Fixed layout", "No scrolling", "One size fits all"],
                    correctAnswer: "Adapts to devices"
                ),
                QuizQuestion(
                    question: "Accessibility features help?",
                    answers: ["Just developers", "Only designers", "No one", "All users"],
                    correctAnswer: "All users"
                ),
                QuizQuestion(
                    question: "Which is a principle of good visual hierarchy?",
                    answers: ["Hide key actions", "Emphasize important elements", "Random font sizes", "No structure"],
                    correctAnswer: "Emphasize important elements"
                ),
                QuizQuestion(
                    question: "Microinteractions are?",
                    answers: ["Small feedback events", "Major redesigns", "Marketing tools", "Hardware issues"],
                    correctAnswer: "Small feedback events"
                ),
                QuizQuestion(
                    question: "What is a wireframe?",
                    answers: ["Database", "Final product", "Basic layout sketch", "Animation"],
                    correctAnswer: "Basic layout sketch"
                ),
                QuizQuestion(
                    question: "A persona in design is?",
                    answers: ["Device", "Font style", "Color palette", "User archetype"],
                    correctAnswer: "User archetype"
                ),
                QuizQuestion(
                    question: "Design systems help with?",
                    answers: ["Consistency", "Randomness", "Slower dev", "Hardware"],
                    correctAnswer: "Consistency"
                ),
                QuizQuestion(
                    question: "Which tool is used for prototyping?",
                    answers: ["Slack", "Xcode", "Figma", "Terminal"],
                    correctAnswer: "Figma"
                ),
                QuizQuestion(
                    question: "A call-to-action (CTA) should be?",
                    answers: ["Hidden", "Clear and visible", "Unlabeled", "Irrelevant"],
                    correctAnswer: "Clear and visible"
                ),
                QuizQuestion(
                    question: "Good UX design reduces?",
                    answers: ["User frustration", "Engagement", "Satisfaction", "Retention"],
                    correctAnswer: "User frustration"
                )
            ]
        case "Project Management":
            return [
                // 20 Sample QuizQuestions for Project Management domain
                QuizQuestion(
                    question: "What is the purpose of a project roadmap?",
                    answers: ["Outline major milestones", "Track bugs", "Design UI", "Write code"],
                    correctAnswer: "Outline major milestones"
                ),
                QuizQuestion(
                    question: "Agile methodology emphasizes?",
                    answers: ["Iterative development", "Waterfall planning", "No feedback", "Rigid roles"],
                    correctAnswer: "Iterative development"
                ),
                QuizQuestion(
                    question: "A sprint in Scrum is?",
                    answers: ["Time-boxed work period", "Bug report", "Design file", "Release version"],
                    correctAnswer: "Time-boxed work period"
                ),
                QuizQuestion(
                    question: "What is a backlog?",
                    answers: ["List of tasks/features", "Database", "Design tool", "Meeting"],
                    correctAnswer: "List of tasks/features"
                ),
                QuizQuestion(
                    question: "Who is responsible for product vision?",
                    answers: ["Product Owner", "Scrum Master", "Developer", "Designer"],
                    correctAnswer: "Product Owner"
                ),
                QuizQuestion(
                    question: "What is a Gantt chart used for?",
                    answers: ["Project scheduling", "UI design", "Coding", "Testing"],
                    correctAnswer: "Project scheduling"
                ),
                QuizQuestion(
                    question: "Daily stand-ups are for?",
                    answers: ["Team updates", "Lunch planning", "Code review", "Design critique"],
                    correctAnswer: "Team updates"
                ),
                QuizQuestion(
                    question: "What is scope creep?",
                    answers: ["Uncontrolled changes", "Bug fixing", "UI redesign", "Testing"],
                    correctAnswer: "Uncontrolled changes"
                ),
                QuizQuestion(
                    question: "Risk management involves?",
                    answers: ["Identifying and mitigating risks", "Ignoring problems", "Designing SF Symbols", "Writing tests"],
                    correctAnswer: "Identifying and mitigating risks"
                ),
                QuizQuestion(
                    question: "A deliverable is?",
                    answers: ["Tangible project output", "Meeting", "Design tool", "Bug report"],
                    correctAnswer: "Tangible project output"
                ),
                QuizQuestion(
                    question: "Who facilitates Scrum meetings?",
                    answers: ["Scrum Master", "Product Owner", "Developer", "Designer"],
                    correctAnswer: "Scrum Master"
                ),
                QuizQuestion(
                    question: "What is Kanban?",
                    answers: ["Visual workflow tool", "Design technique", "Programming language", "Testing framework"],
                    correctAnswer: "Visual workflow tool"
                ),
                QuizQuestion(
                    question: "Stakeholders are?",
                    answers: ["Anyone affected by project", "Only developers", "Only designers", "No one"],
                    correctAnswer: "Anyone affected by project"
                ),
                QuizQuestion(
                    question: "What is a project charter?",
                    answers: ["Document defining project", "Design mockup", "Codebase", "Test suite"],
                    correctAnswer: "Document defining project"
                ),
                QuizQuestion(
                    question: "Critical path method helps with?",
                    answers: ["Scheduling", "UI design", "Bug fixing", "Testing"],
                    correctAnswer: "Scheduling"
                ),
                QuizQuestion(
                    question: "What is a retrospective?",
                    answers: ["Team reflection meeting", "Design review", "Code release", "Bug fix"],
                    correctAnswer: "Team reflection meeting"
                ),
                QuizQuestion(
                    question: "What is MVP?",
                    answers: ["Minimum Viable Product", "Most Valuable Player", "Major Version Patch", "Mock Visual Prototype"],
                    correctAnswer: "Minimum Viable Product"
                ),
                QuizQuestion(
                    question: "Burn-down chart tracks?",
                    answers: ["Work remaining", "UI elements", "Code coverage", "Design assets"],
                    correctAnswer: "Work remaining"
                ),
                QuizQuestion(
                    question: "Which is a project constraint?",
                    answers: ["Time", "Color", "Font", "Animation"],
                    correctAnswer: "Time"
                ),
                QuizQuestion(
                    question: "Change requests should be?",
                    answers: ["Documented and reviewed", "Ignored", "Implemented blindly", "Deleted"],
                    correctAnswer: "Documented and reviewed"
                )
            ]
        case "Coding":
            return [
                // 20 Sample QuizQuestions for Coding domain
                QuizQuestion(
                    question: "What is a variable?",
                    answers: ["A storage for data", "A design tool", "A project plan", "A meeting"],
                    correctAnswer: "A storage for data"
                ),
                QuizQuestion(
                    question: "Which is a conditional statement?",
                    answers: ["if", "for", "var", "func"],
                    correctAnswer: "if"
                ),
                QuizQuestion(
                    question: "A function is used to?",
                    answers: ["Encapsulate code logic", "Design UI", "Manage projects", "Write documentation"],
                    correctAnswer: "Encapsulate code logic"
                ),
                QuizQuestion(
                    question: "What does 'loop' mean in coding?",
                    answers: ["Repeat code", "Design icon", "Schedule meeting", "Test app"],
                    correctAnswer: "Repeat code"
                ),
                QuizQuestion(
                    question: "Which is a data structure?",
                    answers: ["Array", "Storyboard", "Meeting", "Sprint"],
                    correctAnswer: "Array"
                ),
                QuizQuestion(
                    question: "What is debugging?",
                    answers: ["Finding and fixing errors", "Designing", "Planning", "Testing only"],
                    correctAnswer: "Finding and fixing errors"
                ),
                QuizQuestion(
                    question: "Which is a Swift keyword?",
                    answers: ["let", "draw", "roadmap", "milestone"],
                    correctAnswer: "let"
                ),
                QuizQuestion(
                    question: "What is an API?",
                    answers: ["Application Programming Interface", "Animation Plugin", "Project Item", "Array Property"],
                    correctAnswer: "Application Programming Interface"
                ),
                QuizQuestion(
                    question: "Which operator is used for assignment?",
                    answers: ["=", "==", "+", "/"],
                    correctAnswer: "="
                ),
                QuizQuestion(
                    question: "What is a class?",
                    answers: ["Blueprint for objects", "UI element", "Meeting", "Sprint"],
                    correctAnswer: "Blueprint for objects"
                ),
                QuizQuestion(
                    question: "Which is a Boolean value?",
                    answers: ["true", "string", "array", "function"],
                    correctAnswer: "true"
                ),
                QuizQuestion(
                    question: "What is version control used for?",
                    answers: ["Tracking code changes", "Designing", "Scheduling", "Testing"],
                    correctAnswer: "Tracking code changes"
                ),
                QuizQuestion(
                    question: "What is a comment in code?",
                    answers: ["Annotation for developers", "UI note", "Meeting agenda", "Sprint goal"],
                    correctAnswer: "Annotation for developers"
                ),
                QuizQuestion(
                    question: "Which is a loop type?",
                    answers: ["for", "next", "plan", "design"],
                    correctAnswer: "for"
                ),
                QuizQuestion(
                    question: "What is the output of print(2 + 2)?",
                    answers: ["4", "22", "2+2", "Error"],
                    correctAnswer: "4"
                ),
                QuizQuestion(
                    question: "Which is a string?",
                    answers: ["\"Hello\"", "123", "true", "[]"],
                    correctAnswer: "\"Hello\""
                ),
                QuizQuestion(
                    question: "What is an IDE?",
                    answers: ["Integrated Development Environment", "Design system", "Project plan", "Animation tool"],
                    correctAnswer: "Integrated Development Environment"
                ),
                QuizQuestion(
                    question: "Which is a type of bug?",
                    answers: ["Syntax error", "Design system", "Sprint", "Meeting"],
                    correctAnswer: "Syntax error"
                ),
                QuizQuestion(
                    question: "Which function prints output in Swift?",
                    answers: ["print()", "draw()", "run()", "show()"],
                    correctAnswer: "print()"
                ),
                QuizQuestion(
                    question: "What is the main file extension for Swift?",
                    answers: [".swift", ".java", ".py", ".txt"],
                    correctAnswer: ".swift"
                )
            ]
        case "Typography" :
            return [
                QuizQuestion(
                    question: "What is the best practice for sizing text in an iOS app?",
                    answers: ["Use custom font sizes for every element", "Use Apple's built-in text styles like Body and Title1", "Match font sizes to screen resolution", "Use percentages instead of points"],
                    correctAnswer: "Use Apple’s built-in text styles like Body and Title1"
                ),
                QuizQuestion(
                    question:"You should hardcode font sizes to keep text visually consistent",
                    answers: ["True", "False"],
                    correctAnswer: "False"
                ),
                QuizQuestion(
                    question: "What's the recommended minimum line height relative to font size?",
                    answers: ["100%", "110", "120%", "150%"],
                    correctAnswer: "120%"
                ),
                QuizQuestion(
                    question: "Which of the following supports Dynamic Type?",
                    answers: ["Using UIFontMetrics", "Using custom web fonts", "Using static UIlabels", "Embedding text as images"],
                    correctAnswer: "Using UIFontMetrics"
                ),
                QuizQuestion(
                    question: "Dynamic Type allows users to change text size system-wide.",
                    answers: ["True", "False"],
                    correctAnswer: "True"
                ),
                QuizQuestion(
                    question: "What happens when you use custom fonts without scaling logic?",
                    answers: ["They load faster", "Layout remains consistent", "Accessibility may break", "App gets approved faster"],
                    correctAnswer: "Accessibility may break"
                )
            ]
            case "Color" :
            return [
            QuizQuestion(
                question: "Why does Apple recommend using semantic colors like systemBlue or label",
                answers: ["They match brand colors", "They auto-adapt to dark mode and accessibility settings", "They increase animation speed", "They are easier to export" ],
                correctAnswer: "They auto-adapt to dark mode and accessibility settings"
          ),
            QuizQuestion(
                question: "Which semantic color would you use for standard body text?",
                answers: ["systemBackground", "systemBlue", "label", "tintColor"],
                correctAnswer: "label"
            ),
            QuizQuestion(
                question: "What contrast ratio is required for body text to meet accessibility standards?",
                answers: ["2:1", "3:1", "4.5:1", "6:1"],
                correctAnswer: "4.5:1"
                ),
            QuizQuestion(
                question: "Whats the minimum contrast ratio for large text to be considered accessibly?",
                answers: ["3:1", "4.5:1", "5:1", "6:1"],
                correctAnswer: "3:1"
                ),
            QuizQuestion(
                question: "Why should you avoid using hardcoded RGB values for UI elements?",
                answers: ["They load slowly", "They dont support responsive layout", "they dont adapt to dark mode or accessibility settings", "they cant be exported"],
                correctAnswer: "they cant adapt to dark mode or accessibility settings"
            ),
            QuizQuestion(
                question: "What is the purpose of semantic color names like systemRed?",
                answers: ["They enforce branding", "they simpify code syntax", "They maintain consistency and adapt to UI themes", "they are required by the App Store"],
                correctAnswer: "They maintain consistency and adapt to UI themes"
            ),
            QuizQuestion(
                question: "Which color combo is most likely to fail a contrast check?",
                answers: ["Black text on white", "Grey text on light grey", "White on Black", "systemBlue on background"],
                correctAnswer: "Grey text on light grey"
            ),
            QuizQuestion(
                question: "Which tool helps you check color accessibility compliance?",
                answers: ["Dynamic Type", "Contrast Checker", "Xcode Profiler", "Asset Catalog"],
                correctAnswer: "Contrast Checker"
            ),
            QuizQuestion(
                question: "What is an example of poor color-based communication?",
                answers: ["Red text for errors + icons", "Blue links with underlines", "Color-only cues with no icons or labels","Using label for text"],
                correctAnswer: "Color-only cues with no icons or labels"
            ),
            QuizQuestion(
                question: "How can you best ensure visual accessibility across themes and modes?",
                answers: ["Use HSL color sliders", "match app colors to brand guidelines", "Use Apple's semantic colors wherever possible", "Avoid dark mode"],
                correctAnswer: "Use Apple's semantic colors wherever possible"
            )
            ]
        case "User Control" :
            return [
                QuizQuestion(
                       question: "What does “User Control” primarily mean in interface design?",
                       answers: [
                           "Designing for system automation",
                           "Letting users make choices and correct mistakes",
                           "Forcing users through optimized flows",
                           "Hiding all navigation options"
                       ].shuffled(),
                       correctAnswer: "Letting users make choices and correct mistakes"
                   ),
                   QuizQuestion(
                       question: "Which of the following supports User Control?",
                       answers: [
                           "Auto-advancing to the next screen without confirmation",
                           "Providing undo and cancel options",
                           "Locking the user into multi-step flows",
                           "Replacing back buttons with close-only modals"
                       ].shuffled(),
                       correctAnswer: "Providing undo and cancel options"
                   ),
                   QuizQuestion(
                       question: "What kind of action should always be confirmed before continuing?",
                       answers: [
                           "Animating a view",
                           "Navigating to settings",
                           "Performing a destructive change like deletion",
                           "Scrolling past a section"
                       ].shuffled(),
                       correctAnswer: "Performing a destructive change like deletion"
                   ),
                   QuizQuestion(
                       question: "Which of the following UI patterns best supports user freedom?",
                       answers: [
                           "Locked flows with no back navigation",
                           "Modal sheets with clear exit paths",
                           "Unlabeled auto-submits",
                           "No error handling"
                       ].shuffled(),
                       correctAnswer: "Modal sheets with clear exit paths"
                   ),
                   QuizQuestion(
                       question: "What is a good reason to include a “Cancel” button in modals?",
                       answers: [
                           "It looks professional",
                           "It helps the developer test options",
                           "It lets users back out of a decision",
                           "It reduces code complexity"
                       ].shuffled(),
                       correctAnswer: "It lets users back out of a decision"
                   ),
                   QuizQuestion(
                       question: "How soon should an “Undo” option be available after an action?",
                       answers: [
                           "Within 5–10 taps",
                           "Instantly or within 1–2 taps",
                           "At the next screen",
                           "In the app settings"
                       ].shuffled(),
                       correctAnswer: "Instantly or within 1–2 taps"
                   ),
                   QuizQuestion(
                       question: "What’s a common UX mistake that limits user control?",
                       answers: [
                           "Including redundant buttons",
                           "Failing to show a confirmation message",
                           "Repeating user input",
                           "Offering too many color themes"
                       ].shuffled(),
                       correctAnswer: "Failing to show a confirmation message"
                   ),
                   QuizQuestion(
                       question: "Which of these features most respects the user’s autonomy?",
                       answers: [
                           "Auto-submitting forms on field blur",
                           "Providing clear opt-in or opt-out options",
                           "Hiding navigation until later",
                           "Requiring full-screen confirmations"
                       ].shuffled(),
                       correctAnswer: "Providing clear opt-in or opt-out options"
                   ),
                   QuizQuestion(
                       question: "What happens when users feel they can’t control an app’s behavior?",
                       answers: [
                           "They trust it more",
                           "They explore confidently",
                           "They become hesitant or abandon tasks",
                           "They perform better"
                       ].shuffled(),
                       correctAnswer: "They become hesitant or abandon tasks"
                   ),
                   QuizQuestion(
                       question: "What interface element helps prevent irreversible errors?",
                       answers: [
                           "Shadow effects",
                           "Animated icons",
                           "Confirmation dialogs or alerts",
                           "Loading spinners"
                       ].shuffled(),
                       correctAnswer: "Confirmation dialogs or alerts"
                   )

            ]
            
        case "Aesthetic Integrity" :
            return [
                QuizQuestion(
                    question: "What is the primary goal of Aesthetic Integrity in app design?",
                    answers: [
                        "Maximize screen usage",
                        "Match visual tone to app purpose",
                        "Use custom fonts and colors",
                        "Replicate Apple’s UI exactly"
                    ].shuffled(),
                    correctAnswer: "Match visual tone to app purpose"
                ),
                QuizQuestion(
                    question: "Which approach best reflects Aesthetic Integrity for a meditation app?",
                    answers: [
                        "Vibrant colors, playful icons, and dynamic graphs",
                        "Calm visuals, minimal text, smooth transitions",
                        "Bright alerts and quick animations",
                        "Bold typography and flashing buttons"
                    ].shuffled(),
                    correctAnswer: "Calm visuals, minimal text, smooth transitions"
                ),
                QuizQuestion(
                    question: "An educational app for young children should prioritize…",
                    answers: [
                        "Real-time graphs and minimalist tone",
                        "Neutral colors and technical typefaces",
                        "Playful design that feels intuitive and friendly",
                        "Monochrome layout and tight spacing"
                    ].shuffled(),
                    correctAnswer: "Playful design that feels intuitive and friendly"
                ),
                QuizQuestion(
                    question: "What kind of motion best supports Aesthetic Integrity?",
                    answers: [
                        "Randomized transitions",
                        "Animations longer than 1 second",
                        "Subtle motion between 0.2–0.5 seconds",
                        "Continuous background movement"
                    ].shuffled(),
                    correctAnswer: "Subtle motion between 0.2–0.5 seconds"
                ),
                QuizQuestion(
                    question: "What layout strategy enhances Aesthetic Integrity?",
                    answers: [
                        "Random element spacing",
                        "Placing content in the top 60% of the screen",
                        "Centered floating buttons only",
                        "Full-width images in every section"
                    ].shuffled(),
                    correctAnswer: "Placing content in the top 60% of the screen"
                ),
                QuizQuestion(
                    question: "Which of the following would break Aesthetic Integrity in a finance app?",
                    answers: [
                        "Clean typography and minimal charts",
                        "Bright gradients and bouncy animations",
                        "Subtle hierarchy and legible numbers",
                        "Responsive charts and icons"
                    ].shuffled(),
                    correctAnswer: "Bright gradients and bouncy animations"
                ),
                QuizQuestion(
                    question: "In terms of motion, what duration supports emotional focus without distraction?",
                    answers: [
                        "0.1–0.2 seconds",
                        "0.2–0.5 seconds",
                        "0.6–0.8 seconds",
                        "1–1.5 seconds"
                    ].shuffled(),
                    correctAnswer: "0.2–0.5 seconds"
                ),
                QuizQuestion(
                    question: "Which app experience best reflects poor Aesthetic Integrity?",
                    answers: [
                        "A workout app with high-energy colors and feedback",
                        "A journaling app with soft tones and minimal input fields",
                        "A banking app with cartoon icons and bold background music",
                        "A calendar with subdued tones and readable layouts"
                    ].shuffled(),
                    correctAnswer: "A banking app with cartoon icons and bold background music"
                ),
                QuizQuestion(
                    question: "How should visuals and behavior align to achieve Aesthetic Integrity?",
                    answers: [
                        "Through consistent branding",
                        "By matching design decisions to user intent and task type",
                        "Using decorative visuals throughout",
                        "Minimizing animations"
                    ].shuffled(),
                    correctAnswer: "By matching design decisions to user intent and task type"
                ),
                QuizQuestion(
                    question: "Which of the following is least important to Aesthetic Integrity?",
                    answers: [
                        "Emotional tone",
                        "Visual hierarchy",
                        "Navigation gesture",
                        "Functional alignment"
                    ].shuffled(),
                    correctAnswer: "Navigation gesture"
                )
            ]
        case "Accessibility" :
            return [
            QuizQuestion(
                question: "What is the primary goal of accessibility in app design?",
                answers: [
                    "To reduce design complexity",
                    "To work well for users with diverse abilities",
                    "To meet branding requirements",
                    "To match Android accessibility patterns"
                ].shuffled(),
                correctAnswer: "To work well for users with diverse abilities"
            ),
            QuizQuestion(
                question: "Which of the following is an example of accessible design?",
                answers: [
                    "A button that’s 30×30pt",
                    "Green = success, red = error (with no labels)",
                    "Labeling icons for VoiceOver support",
                    "Custom fonts with fixed sizes"
                ].shuffled(),
                correctAnswer: "Labeling icons for VoiceOver support"
            ),
            QuizQuestion(
                question: "What is the minimum recommended tap target size for iOS?",
                answers: [
                    "36pt",
                    "40pt",
                    "44pt",
                    "48pt"
                ].shuffled(),
                correctAnswer: "44pt"
            ),
            QuizQuestion(
                question: "Which color contrast ratio meets WCAG standards for body text?",
                answers: [
                    "3:1",
                    "4.5:1",
                    "2.5:1",
                    "6.5:1"
                ].shuffled(),
                correctAnswer: "4.5:1"
            ),
            QuizQuestion(
                question: "Why should you avoid relying on color alone to communicate meaning?",
                answers: [
                    "Users may not like colors",
                    "Color printing is expensive",
                    "Colorblind users may miss the message",
                    "Branding guidelines change"
                ].shuffled(),
                correctAnswer: "Colorblind users may miss the message"
            ),
            QuizQuestion(
                question: "What does Dynamic Type enable?",
                answers: [
                    "Fixed-size text",
                    "Resizable layouts",
                    "User-adjusted text size for readability",
                    "Theming support"
                ].shuffled(),
                correctAnswer: "User-adjusted text size for readability"
            ),
            QuizQuestion(
                question: "What is a good way to test for VoiceOver compatibility?",
                answers: [
                    "Use screen mirroring",
                    "Turn on accessibility inspector in Xcode",
                    "Tap the screen randomly",
                    "Check app speed manually"
                ].shuffled(),
                correctAnswer: "Turn on accessibility inspector in Xcode"
            ),
            QuizQuestion(
                question: "Which of the following fails accessibility best practices?",
                answers: [
                    "Using system font styles",
                    "High contrast between text and background",
                    "Animating text elements",
                    "Providing descriptive labels"
                ].shuffled(),
                correctAnswer: "Animating text elements"
            ),
            QuizQuestion(
                question: "Which layout behavior helps users with motor impairments?",
                answers: [
                    "Fast animations",
                    "Small buttons and tight spacing",
                    "Large tap areas with padding",
                    "Drag-and-drop only"
                ].shuffled(),
                correctAnswer: "Large tap areas with padding"
            ),
            QuizQuestion(
                question: "Which of these features supports inclusive design?",
                answers: [
                    "RTL layout mirroring",
                    "Custom gestures with no backup",
                    "Removing all labels for minimalism",
                    "Skipping dynamic type support"
                ].shuffled(),
                correctAnswer: "RTL layout mirroring"
            )
        ]
        case "Deference" :
            return [
                QuizQuestion(
                        question: "What does the principle of Deference emphasize in iOS design?",
                        answers: [
                            "Bold UI that grabs attention",
                            "Animating UI before showing content",
                            "Letting content shine by minimizing interface distractions",
                            "Prioritizing branding visuals over usability"
                        ].shuffled(),
                        correctAnswer: "Letting content shine by minimizing interface distractions"
                    ),
                    QuizQuestion(
                        question: "Which of the following demonstrates poor Deference?",
                        answers: [
                            "Blurred toolbar background",
                            "Minimal UI that recedes from focus",
                            "Giant logo header on every screen",
                            "Transparent navigation bar"
                        ].shuffled(),
                        correctAnswer: "Giant logo header on every screen"
                    ),
                    QuizQuestion(
                        question: "Which technique helps support Deference in a photo gallery app?",
                        answers: [
                            "Animated gradient overlays",
                            "Minimizing toolbars during image viewing",
                            "Adding complex UI shadows",
                            "Showing full navigation at all times"
                        ].shuffled(),
                        correctAnswer: "Minimizing toolbars during image viewing"
                    ),
                    QuizQuestion(
                        question: "What UI behavior aligns with the principle of Deference?",
                        answers: [
                            "Vibrant buttons that remain on screen at all times",
                            "Toolbar that auto-hides or blurs",
                            "Popups layered above all content",
                            "Background music playback UI"
                        ].shuffled(),
                        correctAnswer: "Toolbar that auto-hides or blurs"
                    ),
                    QuizQuestion(
                        question: "Which system tool visually supports Deference?",
                        answers: [
                            "systemMaterial blur",
                            "Fixed headers",
                            "Shadow animations",
                            "Flashing alerts"
                        ].shuffled(),
                        correctAnswer: "systemMaterial blur"
                    ),
                    QuizQuestion(
                        question: "What’s the recommended maximum height for UI overlays when content should be in focus?",
                        answers: [
                            "10%",
                            "20–25%",
                            "50%",
                            "80%"
                        ].shuffled(),
                        correctAnswer: "20–25%"
                    ),
                    QuizQuestion(
                        question: "What design outcome does Deference aim to prevent?",
                        answers: [
                            "Content repetition",
                            "Interaction fatigue",
                            "UI overshadowing content",
                            "Gesture conflicts"
                        ].shuffled(),
                        correctAnswer: "UI overshadowing content"
                    ),
                    QuizQuestion(
                        question: "What’s a common feature of deferential design?",
                        answers: [
                            "Heavy shadows around containers",
                            "Prominent top bars with logos",
                            "Flat buttons and low-contrast backgrounds",
                            "Clear layout with content-forward approach"
                        ].shuffled(),
                        correctAnswer: "Clear layout with content-forward approach"
                    ),
                    QuizQuestion(
                        question: "Which app would most benefit from a highly deferential interface?",
                        answers: [
                            "Social networking app",
                            "Photo editing app",
                            "Arcade game",
                            "Currency converter"
                        ].shuffled(),
                        correctAnswer: "Photo editing app"
                    ),
                    QuizQuestion(
                        question: "What is the visual priority in Deference-based design?",
                        answers: [
                            "Visual flair",
                            "Interface innovation",
                            "Content clarity",
                            "Brand consistency"
                        ].shuffled(),
                        correctAnswer: "Content clarity"
                    )
                ]
        case "Layout" :
            return [
                    QuizQuestion(
                        question: "What is the main goal of good layout in iOS app design?",
                        answers: [
                            "To fill all white space",
                            "To organize content clearly and predictably",
                            "To showcase custom visual elements",
                            "To match the brand’s print material"
                        ].shuffled(),
                        correctAnswer: "To organize content clearly and predictably"
                    ),
                    QuizQuestion(
                        question: "Which spacing standard is recommended between grouped items?",
                        answers: [
                            "4pt",
                            "8pt",
                            "16pt",
                            "24pt"
                        ].shuffled(),
                        correctAnswer: "8pt"
                    ),
                    QuizQuestion(
                        question: "What’s the recommended horizontal padding at the edge of the screen?",
                        answers: [
                            "10pt",
                            "12pt",
                            "16pt",
                            "24pt"
                        ].shuffled(),
                        correctAnswer: "16pt"
                    ),
                    QuizQuestion(
                        question: "Which of the following improves layout clarity the most?",
                        answers: [
                            "Randomized spacing between elements",
                            "Using system-recommended alignment and padding",
                            "Custom margins for each screen",
                            "Fixed widths for all buttons"
                        ].shuffled(),
                        correctAnswer: "Using system-recommended alignment and padding"
                    ),
                    QuizQuestion(
                        question: "How much vertical spacing should exist between distinct sections?",
                        answers: [
                            "12pt",
                            "16pt",
                            "24pt",
                            "32pt"
                        ].shuffled(),
                        correctAnswer: "24pt"
                    ),
                    QuizQuestion(
                        question: "Which behavior demonstrates respect for Safe Areas?",
                        answers: [
                            "Centering content regardless of screen size",
                            "Letting UI overlap with notches or corners",
                            "Adapting layout margins for different devices",
                            "Avoiding Auto Layout"
                        ].shuffled(),
                        correctAnswer: "Adapting layout margins for different devices"
                    ),
                    QuizQuestion(
                        question: "What happens when you ignore Safe Areas on a device with a notch?",
                        answers: [
                            "Nothing changes",
                            "UI adjusts automatically",
                            "Content may be clipped or hidden",
                            "Contrast improves"
                        ].shuffled(),
                        correctAnswer: "Content may be clipped or hidden"
                    ),
                    QuizQuestion(
                        question: "Which tool helps you ensure consistent spacing and alignment in your layout?",
                        answers: [
                            "Haptic engine",
                            "Symbol inspector",
                            "Grid and rulers in design software",
                            "Accessibility checker"
                        ].shuffled(),
                        correctAnswer: "Grid and rulers in design software"
                    ),
                    QuizQuestion(
                        question: "Which of these layouts is best suited for dynamic content sizes?",
                        answers: [
                            "Fixed height views",
                            "Absolute positioned elements",
                            "Responsive stacks with flexible spacing",
                            "Manually aligned pixel positions"
                        ].shuffled(),
                        correctAnswer: "Responsive stacks with flexible spacing"
                    ),
                    QuizQuestion(
                        question: "What is a sign of a poorly structured layout?",
                        answers: [
                            "Consistent padding between sections",
                            "Safe area usage",
                            "Overlapping content at different font sizes",
                            "Reusable components with Auto Layout"
                        ].shuffled(),
                        correctAnswer: "Overlapping content at different font sizes"
                    )
                ]

        case "SF Symbols" :
            return [
                    QuizQuestion(
                        question: "What is the primary advantage of using SF Symbols in your app?",
                        answers: [
                            "They animate automatically",
                            "They scale with text and match system style",
                            "They increase app load time",
                            "They offer infinite customization"
                        ].shuffled(),
                        correctAnswer: "They scale with text and match system style"
                    ),
                    QuizQuestion(
                        question: "Which of these is an example of an SF Symbol name?",
                        answers: [
                            "trash_icon.png",
                            "delete.button.icon",
                            "trash",
                            "x-mark@2x"
                        ].shuffled(),
                        correctAnswer: "trash"
                    ),
                    QuizQuestion(
                        question: "What feature makes SF Symbols accessibility-friendly?",
                        answers: [
                            "They include alt text",
                            "They animate with gestures",
                            "They respond to system text size",
                            "They are grayscale"
                        ].shuffled(),
                        correctAnswer: "They respond to system text size"
                    ),
                    QuizQuestion(
                        question: "To ensure your SF Symbol aligns with body text, you should…",
                        answers: [
                            "Resize manually in each view",
                            "Match to font size using UIFont.TextStyle",
                            "Set its frame to 44pt",
                            "Export it as a PNG"
                        ].shuffled(),
                        correctAnswer: "Match to font size using UIFont.TextStyle"
                    ),
                    QuizQuestion(
                        question: "Which of these actions is best represented by the square.and.arrow.up symbol?",
                        answers: [
                            "Save",
                            "Delete",
                            "Share",
                            "Back"
                        ].shuffled(),
                        correctAnswer: "Share"
                    ),
                    QuizQuestion(
                        question: "How does Apple recommend styling icons for visual consistency?",
                        answers: [
                            "Use .jpg with fixed padding",
                            "Use SF Symbols and scale them with font",
                            "Create new icons per screen",
                            "Style every icon differently"
                        ].shuffled(),
                        correctAnswer: "Use SF Symbols and scale them with font"
                    ),
                    QuizQuestion(
                        question: "Why is it discouraged to use PNG icons in place of SF Symbols?",
                        answers: [
                            "PNGs take longer to load",
                            "PNGs can’t scale or adapt to text styles",
                            "PNGs are illegal in Apple design",
                            "PNGs use too much memory"
                        ].shuffled(),
                        correctAnswer: "PNGs can’t scale or adapt to text styles"
                    ),
                    QuizQuestion(
                        question: "What’s the best way to ensure consistent alignment of icons and text?",
                        answers: [
                            "Align manually",
                            "Use auto layout",
                            "Use SF Symbols with system text styles",
                            "Match widths manually"
                        ].shuffled(),
                        correctAnswer: "Use SF Symbols with system text styles"
                    ),
                    QuizQuestion(
                        question: "Which of these is NOT a benefit of SF Symbols?",
                        answers: [
                            "Automatic scaling",
                            "Built-in accessibility support",
                            "Native dark/light mode switching",
                            "Custom animation on tap"
                        ].shuffled(),
                        correctAnswer: "Custom animation on tap"
                    ),
                    QuizQuestion(
                        question: "How should SF Symbols be implemented in a SwiftUI layout?",
                        answers: [
                            "As JPEG assets",
                            "Through Image(systemName:)",
                            "Using hardcoded SVGs",
                            "Embedded inside text fields"
                        ].shuffled(),
                        correctAnswer: "Through Image(systemName:)"
                    )
                ]
            case "Consistency" :
            return [
                    QuizQuestion(
                        question: "What is the core reason consistency matters in app design?",
                        answers: [
                            "It reduces file size",
                            "It helps users navigate intuitively",
                            "It allows for more animations",
                            "It makes each screen unique"
                        ].shuffled(),
                        correctAnswer: "It helps users navigate intuitively"
                    ),
                    QuizQuestion(
                        question: "Which practice promotes visual and functional consistency?",
                        answers: [
                            "Using system-standard components",
                            "Using different layouts per screen",
                            "Designing gestures per feature",
                            "Changing font styles constantly"
                        ].shuffled(),
                        correctAnswer: "Using system-standard components"
                    ),
                    QuizQuestion(
                        question: "What is the default height for a tab bar on iPhone?",
                        answers: [
                            "40pt",
                            "44pt",
                            "50pt",
                            "60pt"
                        ].shuffled(),
                        correctAnswer: "50pt"
                    ),
                    QuizQuestion(
                        question: "What does using Apple’s SF Symbols in your app promote?",
                        answers: [
                            "Color variety",
                            "Visual consistency",
                            "Navigation speed",
                            "Animation control"
                        ].shuffled(),
                        correctAnswer: "Visual consistency"
                    ),
                    QuizQuestion(
                        question: "Which of the following would break consistency in an app?",
                        answers: [
                            "Standard gestures across all screens",
                            "Buttons that change behavior without visual cues",
                            "Consistent navigation patterns",
                            "Predictable loading states"
                        ].shuffled(),
                        correctAnswer: "Buttons that change behavior without visual cues"
                    ),
                    QuizQuestion(
                        question: "What is the minimum tap target size for iOS?",
                        answers: [
                            "32pt",
                            "40pt",
                            "44pt",
                            "50pt"
                        ].shuffled(),
                        correctAnswer: "44pt"
                    ),
                    QuizQuestion(
                        question: "Which is a benefit of consistent interface patterns?",
                        answers: [
                            "Less creative control",
                            "Fewer decisions for the user",
                            "More visual diversity",
                            "Increased onboarding time"
                        ].shuffled(),
                        correctAnswer: "Fewer decisions for the user"
                    ),
                    QuizQuestion(
                        question: "Which icon style supports consistency across iOS apps?",
                        answers: [
                            "Custom emojis",
                            "Random PNGs",
                            "SF Symbols",
                            "Bitmapped graphics"
                        ].shuffled(),
                        correctAnswer: "SF Symbols"
                    ),
                    QuizQuestion(
                        question: "What kind of user behavior does inconsistency cause?",
                        answers: [
                            "Confidence",
                            "Exploration",
                            "Frustration",
                            "Speed"
                        ].shuffled(),
                        correctAnswer: "Frustration"
                    ),
                    QuizQuestion(
                        question: "Consistency is most closely linked to which design principle?",
                        answers: [
                            "Branding",
                            "Usability",
                            "Color theory",
                            "Monetization"
                        ].shuffled(),
                        correctAnswer: "Usability"
                    )
                ]
        case "Depth" :
            return [
                    QuizQuestion(
                        question: "What does “Depth” help communicate in an app interface?",
                        answers: [
                            "Brand identity",
                            "App monetization",
                            "Spatial relationships and flow",
                            "Screen resolution"
                        ].shuffled(),
                        correctAnswer: "Spatial relationships and flow"
                    ),
                    QuizQuestion(
                        question: "Which animation best represents a modal view appearing with depth?",
                        answers: [
                            "Bounce in from the left",
                            "Fade in with no layering",
                            "Slide up with background dimming or blur",
                            "Flip 3D rotation"
                        ].shuffled(),
                        correctAnswer: "Slide up with background dimming or blur"
                    ),
                    QuizQuestion(
                        question: "What is the recommended timing for depth-related transitions?",
                        answers: [
                            "0.1–0.2 seconds",
                            "0.3–0.5 seconds",
                            "0.7–1 second",
                            "2+ seconds"
                        ].shuffled(),
                        correctAnswer: "0.3–0.5 seconds"
                    ),
                    QuizQuestion(
                        question: "What role does animation play in creating perceived depth?",
                        answers: [
                            "It adds entertainment",
                            "It reinforces the hierarchy and flow between screens",
                            "It simplifies development",
                            "It disguises loading time"
                        ].shuffled(),
                        correctAnswer: "It reinforces the hierarchy and flow between screens"
                    ),
                    QuizQuestion(
                        question: "What does a screen that “slides over” another typically communicate?",
                        answers: [
                            "The new screen is permanent",
                            "The new screen is temporary or contextual",
                            "The app is exiting",
                            "The system is switching apps"
                        ].shuffled(),
                        correctAnswer: "The new screen is temporary or contextual"
                    ),
                    QuizQuestion(
                        question: "Which of these techniques creates poor depth?",
                        answers: [
                            "Subtle elevation with shadows",
                            "Layering and easing transitions",
                            "Simultaneously fading in all UI layers",
                            "Delayed motion on popups"
                        ].shuffled(),
                        correctAnswer: "Simultaneously fading in all UI layers"
                    ),
                    QuizQuestion(
                        question: "Which opacity level is typically used for UI shadows to suggest layering?",
                        answers: [
                            "5–10%",
                            "10–20%",
                            "30–40%",
                            "50–70%"
                        ].shuffled(),
                        correctAnswer: "10–20%"
                    ),
                    QuizQuestion(
                        question: "What’s the purpose of blurring the background when a modal appears?",
                        answers: [
                            "To slow performance",
                            "To block accessibility tools",
                            "To guide user focus and establish depth",
                            "To preview the last screen"
                        ].shuffled(),
                        correctAnswer: "To guide user focus and establish depth"
                    ),
                    QuizQuestion(
                        question: "Which design approach best reflects thoughtful depth?",
                        answers: [
                            "Flat cards and abrupt screen changes",
                            "Screen transitions with spatial orientation cues",
                            "All content stacked in one flat layout",
                            "Top-down scroll only"
                        ].shuffled(),
                        correctAnswer: "Screen transitions with spatial orientation cues"
                    ),
                    QuizQuestion(
                        question: "What kind of motion curve is recommended for spatial transitions?",
                        answers: [
                            "Linear",
                            "Randomized",
                            "Ease-in-out",
                            "Constant-speed"
                        ].shuffled(),
                        correctAnswer: "Ease-in-out"
                    )
                ]
            
            


            // Fallback: if specific topics under Design are requested, return Design questions for now
        case "Human-Centered Design", "Animation Delight", "Consistency Matters":
            return QuizDatabase
                .getQuestions(
                    for: Topic(
                        name: "Design",
                        symbol: "",
                        description: "paintbrush",
                        link: "General design topic details."
                    )
                )
        default:
            return []
        }
    }
}

//
//struct QuizQuestion: Identifiable {
//    let id = UUID()
//    let question: String
//    let options: [String]
//    let correctAnswer: String
//}

let quizQuestions: [String: [String]] = [
    "Typography": [
        "What considerations are made for dark mode?",
        "How does the principle of similarity work?",
        "Why is line height important in typography?",
        "Why are layout grids important in interface design?",
        "Why is accessibility essential in product design?"
    ],
    "Color Theory": [
        "What is baseline grid alignment?",
        "What is the purpose of Apple's HIG color guidance?",
        "What is semantic color use in dark mode?",
        "What makes an icon pixel-perfect?",
        "What is the role of visual rhythm?"
    ],
    "Layout Grids": [
        "How do you ensure readability in long-form text?",
        "What are dynamic type settings?",
        "What are design tokens?",
        "What is the main purpose of typography in design?",
        "What is a spring animation?"
    ],
    "HIG Basics": [
        "Why is accessibility essential in product design?",
        "What is a spring animation?",
        "How to avoid icon overload in UI?",
        "Why is line height important in typography?",
        "What's the difference between transitions and animations?"
    ],
    "Accessibility": [
        "What is a font token?",
        "Why is accessibility essential in product design?",
        "How does the principle of similarity work?",
        "How does font hierarchy impact user experience?",
        "What is the purpose of Apple's HIG color guidance?"
    ],
    "Gestalt Principles": [
        "What are WCAG standards?",
        "What is baseline grid alignment?",
        "What is a spacing token?",
        "What is a spring animation?",
        "What does the Gestalt principle of proximity imply?"
    ],
    "Motion Design": [
        "What is the 60-30-10 rule in color design?",
        "Why is motion design used in modern UIs?",
        "Why is iconography important in digital products?",
        "How do you ensure readability in long-form text?",
        "What are fixed, fluid, and adaptive grid types?"
    ],
    "Iconography": [
        "What are complementary colors on the color wheel?",
        "How can symmetry enhance visual hierarchy?",
        "What makes an icon pixel-perfect?",
        "What considerations are made for dark mode?",
        "What is the purpose of contrast in dark mode?"
    ],
    "Dark Mode": [
        "What does RGB stand for in digital design?",
        "Why is whitespace not 'empty' space?",
        "What does the Gestalt principle of proximity imply?",
        "What are stateful SF Symbols?",
        "What is HIG's guidance on interactive elements?"
    ],
    "Design Tokens": [
        "Which principle promotes clarity and deference in HIG?",
        "How do you ensure readability in long-form text?",
        "What are WCAG standards?",
        "How does dark mode improve battery life?",
        "How can symmetry enhance visual hierarchy?"
    ]

]
