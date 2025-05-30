
import SwiftUI

//this is now the main page when starting after on boarding. need the bookmarks in the top left and a badge button that takes you to the badge sheet on the top left

struct DesignTopicsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(designTopics, id: \.name) { topic in
                    TopicRow(topic: topic)
                        .padding(.horizontal)
                }
            }
        }
        .navigationTitle("Design Topics")
    }
}

struct TopicRow: View {
    let topic: Topic
    
    var body: some View {
        HStack {
            Image(systemName: topic.symbol)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
                .shadow(color: .blue.opacity(0.6), radius: 10)
            
            Text(topic.name)
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemGray6)))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue.opacity(0.3), lineWidth: 1)
        )
        .shadow(color: Color.blue.opacity(0.2), radius: 6)
        
    }
}

#Preview {
    DesignTopicsView()
}
    
//    struct TopicRow: View {
//        let topic: Topic
//        
//        var body: some View {
//            HStack {
//                Image(systemName: topic.symbol)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .clipShape(Circle())
//                    .shadow(color: .blue.opacity(0.6), radius: 10)
//                
//                Text(topic.name)
//                    .font(.headline)
//                    .foregroundColor(.primary)
//                
//                Spacer()
//            }
//            .padding()
//            .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemGray6)))
//            .overlay(
//                RoundedRectangle(cornerRadius: 12)
//                    .stroke(Color.blue.opacity(0.3), lineWidth: 1)
//            )
//            .shadow(color: Color.blue.opacity(0.2), radius: 6)
//        }
//    }
//
