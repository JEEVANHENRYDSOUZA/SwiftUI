//
//  Model.swift
//  testiu
//
//  Created by Jeevan Henry Dsouza on 2025-07-25.
//
import Foundation
struct Data:Identifiable{
    var id = UUID()
    func getTeams() -> [String] {
        return [
        "person.circle","1.circle","2.circle","3.circle","4.circle","5.circle","6.circle","7.circle","8.circle","9.circle"
        ]
    }
}
