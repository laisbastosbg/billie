//
//  SwiftUIView.swift
//  billie
//
//  Created by Thaynara Andrade on 23/09/22.
//

import SwiftUI

struct CheckoutView: View {
    @FocusState private var isUsernameFocused : Bool
    @State private var username = "Random name"
    @State private var item = TabItem()
    
    var body: some View {
        NavigationView {
            
            VStack{
                Spacer(minLength: 20)
                Section(header: Text("Formas de pagamento")
                    .bold()
                    .font(.title3)
                ){
                    
                    List{
                        Label ( "Pix", image: "IconPix")
                        Label ( "Dinheiro", image: "IconMoney")
                        Label ( "Apple pay", image: "IconApplePay")
                        Label ( "Add forma de pagamento", systemImage: "plus")
                        
                    }
                    Spacer(minLength: 20)
                    
                }
                HStack{
                    Button {
                        // nada
                    } label: {
                        Text("Fazer pagamento")
                            .padding()
                            .font(.title2)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(20)
                            .bold()
                            .buttonStyle(.plain)
                    }

                    
                }
                }.navigationTitle("")
            }.navigationBarBackButtonHidden()
            
            
            
            
            
            
        }
    }
    struct CheckoutView_Previews: PreviewProvider {
        static var previews: some View {
            CheckoutView()
        }
    }
