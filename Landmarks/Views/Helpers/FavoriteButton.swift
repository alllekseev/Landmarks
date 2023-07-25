//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Олег Алексеев on 24.07.2023.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label(
                "Toggle Favorite",
                systemImage: isSet
                ? R.SystemImage.fillStar.rawValue
                : R.SystemImage.star.rawValue
            )
            .labelStyle(.iconOnly)
            .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
