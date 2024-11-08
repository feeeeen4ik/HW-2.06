//
//  Person.swift
//  HW 2.06
//
//  Created by Феликс Антонович on 08.11.2024.
//


struct Person {
    let name: String
    let secondName: String
    let company: String
    let department: String
    let position: String
    let bio: String
    
    static func getInfo() -> Person {
        Person(name: "Феликс", secondName: "Антонович", company: "ТОО <<Компания из которой хочу уйти>>", department: "Отдел нерных срывов", position: "Главный подстрекала", bio: "Парень, вроде весёлый, 29 рокiв, почти 30, погряз в низкоуровневом языке программирования 1С. На текущий момент в экстазе от языка Swift")
    }
}
