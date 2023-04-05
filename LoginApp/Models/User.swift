//
//  User.swift
//  LoginApp
//
//  Created by kramonex on 04.04.2023.
//


struct User {
    let login = "Alexey"
    let password = "12345"
    let persons: Person
}

struct Person {
    let name = "Mark"
    let surname = "Nikiforov"
    let age = "28"
    let job = "Software tester"
    let bio = "Меня зовут Марк, мне 28 лет. Вырос в Сочи, последние 10 лет живу в Краснодаре. Работаю тестировщиком 2 года."
}

let user = User(persons: person)

let person = Person()

func getLogin() -> String {
    user.login
}

func getPassword() -> String {
    user.password
}
