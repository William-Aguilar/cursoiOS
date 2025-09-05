//
//  FavPlaces.swift
//  cursoiOS
//
//  Created by will on 03/09/25.
//

import SwiftUI
import MapKit

struct FavPlaces: View {
    @State var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.418184, longitude:  -99.135042), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    var body: some View {
        ZStack{
            MapReader{ proxy in
                Map(position: $position)
                    .onTapGesture {
                        
                    }
            }
        }
    }
}

#Preview {
    FavPlaces()
}
