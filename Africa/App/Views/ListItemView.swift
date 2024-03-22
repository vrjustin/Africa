//
//  ListItemView.swift
//  Africa
//
//  Created by Justin Maronde on 3/22/24.
//

import SwiftUI

struct ListItemView: View {
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            })
        })
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    return ListItemView(animal: animals[1])
}
