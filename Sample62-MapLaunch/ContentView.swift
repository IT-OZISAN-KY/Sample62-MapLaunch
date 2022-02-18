//
//  ContentView.swift
//  Sample62-MapLaunch
//
//  Created by keiji yamaki on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("地図アプリ起動"){
            // 開始：瀬野駅
            let startLatitude = 34.42227024800514
            let startLongitude = 132.59667818752467
            // 終点：HMM
            let destinationLatitude = 34.22654972624221
            let destinationLongitude = 132.63116074016824
            // let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
            let url = URL(string: "maps://?saddr=\(startLatitude),\(startLongitude)&daddr=\(destinationLatitude),\(destinationLongitude)")

            if UIApplication.shared.canOpenURL(url!) {
                  UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
