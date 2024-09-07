//
//  Struct.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/16/23.
//

import Foundation

struct Anime: Identifiable {
    let name: String
    let rating: Double
    let image: String
    let type_show: String
    let summary: String
    let genre: String
    let reviews: [String]
    let id = UUID()
}

struct Book: Identifiable {
    let title: String
    let genre: String
    let author: String
    let cover: String
    let rating: String
    let book_summary: String
    let length: String
    let id = UUID()
}

struct User: Identifiable{
    let name: String
    let profile_image: String
    let bio: String
    let username: String
    let friends: [String]
    let favorite_shows: [String]
    let id = UUID()
}
