//
//  SuivantButton.swift
//  generations-futures
//
//  Created by Apprenant125 on 06/06/2025.
//

import SwiftUI

struct SuivantButton: View {
    
    var pageSuivante : any View
    var body: some View {
        NavigationLink {
            // réussir à mettre le paramètre page suivante
        } label: {
                HStack{
                    Text("Suivant")
                        .font(Font.custom("Poppins-SemiBold", size: 24))
                        .foregroundStyle(.grey500)
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.grey500)
                }
            }
            .frame(width: 350, alignment: .trailing)
            .padding(.trailing, 40)
            .padding(.bottom, 120)
        
//        NavigationLink(destination:pageSuivante) {
//            HStack{
//                Text("Suivant")
//                    .font(Font.custom("Poppins-SemiBold", size: 24))
//                    .foregroundStyle(.grey500)
//                Image(systemName: "chevron.right")
//                    .foregroundStyle(.grey500)
//            }
//            .frame(width: 350, alignment: .trailing)
//            .padding(.trailing, 40)
//            .padding(.bottom, 120)
//
//        }
    }
}

#Preview {
    SuivantButton(pageSuivante: Text(""))
}
