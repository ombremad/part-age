//
//  Questionnaire_View_7_Recap.swift
//  generations-futures
//
//  Created by Apprenant125 on 12/06/2025.
//

import SwiftUI

struct Questionnaire_View_7_Recap: View {
    @Environment(\.dismiss) var dismiss
    @Environment(AnnoncesViewModel.self) var viewModel
    func header() -> some View{
        HStack{
            Button {
                dismiss()
            } label: {
                ZStack{
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 40)
                    
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.grey500)
                    
                }
            }
            
            
            Spacer()
            
            Text("Récapitulatif")
                .font(Font.custom("Poppins-Regular", size: 16))
                .foregroundStyle(.grey50)
                .padding(.trailing,40)
            
            Spacer()
            
            
            
            
        }.padding(.vertical)
    }
    
//    @State var path : [String] = []

    var body: some View {
        NavigationStack/*(path:$path)*/{
            ZStack {
                Color.gray
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                Color.white
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                
                GeometryReader { proxy in
                    let size = proxy.size
                    Circle()
                        .fill(.grey300)
                        .padding()
                        .blur(radius: 100)
                        .offset(x:-10, y: -10)
                    
                    Circle()
                        .fill(.accent)
                        .padding()
                        .blur(radius: 60)
                        .offset(x:150,y: 400)
                }
                
                
                VStack {
                    header()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 32)
                            .fill(.almostWhite)
                            .opacity(0.25)
                            .shadow(radius: 10)
                            .frame(width: 350,height: 640)
                            .padding(.bottom)
                        
                        ScrollView {
                            
                            VStack{
                                Text("Titre")
                                    .font(Font.custom("Poppins-Bold", size: 20))
                                    .foregroundStyle(.grey50)
                                
                                
                                
                                
                                Text(viewModel.title)
                                    .font(Font.custom("Poppins-SemiBold", size: 18))
                                    .foregroundStyle(.grey900)
                                
                                if viewModel.startingDateRangeSelected.isEmpty && viewModel.endingDateSelected.isEmpty{
                                    Text("à \(viewModel.location) le \(viewModel.preciseDate)")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundStyle(.grey900)
                                }
                                else{
                                    VStack{
                                        Text("À \(viewModel.location)")
                                            .font(Font.custom("Poppins-Regular", size: 14))
                                            .foregroundStyle(.grey900)
                                            .padding(.top)
                                    }
                                    Text("Disponible du \(viewModel.startingDateRangeSelected) au \(viewModel.endingDateSelected).")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundStyle(.grey900)
                                }
                                
                                
                                Divider()
                                    .frame(width: 200)
                                
                                Text("Thème")
                                    .font(Font.custom("Poppins-Bold", size: 20))
                                    .foregroundStyle(.grey50)
                                    .padding(.top)
                                
                                
                                HStack{
                                    Text(viewModel.theme.title)
                                        .font(Font.custom("Poppins-Regular", size: 16))
                                        .foregroundStyle(.grey900)
                                    
                                    
                                    Image(systemName: viewModel.theme.image)
                                        .font(.system(size: 14))
                                        .padding()
                                        .background{
                                            Circle()
                                                .fill(.grey100)
                                        }
                                    
                                } .padding(15)
                                    .padding([.leading,.trailing], 40)
                                    .background{
                                        RoundedRectangle(cornerRadius: 24)
                                            .fill(.almostWhite)
                                            .opacity(0.5)
                                        
                                    }.padding(.bottom)
                                
                                Divider()
                                    .frame(width: 200)
                                
                                Text("Description")
                                    .font(Font.custom("Poppins-Bold", size: 20))
                                    .foregroundStyle(.grey50)
                                    .padding(.bottom)
                                
                                Text(viewModel.description)
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .frame(width: 300)
                                    .padding(.bottom)
                                    .multilineTextAlignment(.center)
                                
                                Divider()
                                    .frame(width: 200)
                                
                                Text("Photo")
                                    .font(Font.custom("Poppins-Bold", size: 20))
                                    .foregroundStyle(.grey50)
                                //                                    .padding(.bottom)
                                
                                Image(.Samples.coffee)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .frame(width: 250,height: 300)
                                    .padding(.bottom)
                                
                                NavigationLink{
                                    AnnonceDetailView()
//                                Button{
//                                    viewModel.createNewEvent()
////                                    viewModel.isAllowedToNavigate = true
//                                    path.append("")
                                } label: {
                                    HStack {
                                        
                                        Text("VALIDER")
                                            .font(Font.custom("Poppins-Regular", size: 18))
                                            .fontWeight(.black)
                                        
                                        //                                            .contentShape(Rectangle())
                                        
                                        Image(systemName: "chevron.right")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 18))
                                        
                                    }
                                    .padding(10)
                                    .padding(.horizontal, 60)
                                    .background{
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(.white)
                                    }
                                }                                
                            }
                            
                        }.safeAreaPadding([.horizontal,.bottom]).frame(height: 624)
                    }
                    
                    
                }
                .padding(.horizontal,30)
            }
        }.navigationBarBackButtonHidden(true)
        
        
    }
    
    
}
//}

#Preview {
    @Previewable
    @State var viewModel = AnnoncesViewModel()
    
    Questionnaire_View_7_Recap()
        .environment(AnnoncesViewModel())
}
