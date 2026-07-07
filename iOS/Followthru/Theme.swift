import SwiftUI

/// Unique visual identity for Followthru - Proposal Log.
enum Theme {
    static let accent = Color(red: 0.4784, green: 0.2431, blue: 0.6157)
    static let background = Color(red: 0.0824, green: 0.0431, blue: 0.1020)
    static let textPrimary = Color(red: 0.9608, green: 0.9333, blue: 0.9765)
    static let card = background.opacity(0.6)

    static let titleFont = Font.system(.title2, design: .serif).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)

    static func statusColor(_ status: String) -> Color {
        switch status {
        case "Sent": return accent
        case "Lost": return .gray
        default: return accent.opacity(0.7)
        }
    }
}
