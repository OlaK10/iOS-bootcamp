//
//  main.swift
//  Protocols
//
//  Created by Ola on 26/04/2020.
//  Copyright © 2020 Aleksandra. All rights reserved.
//

protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new egg")
        }
    }
    
}

class Eagle: Bird, CanFly {
    
    func soar() {
        print("The eagle soars through the air")
    }
    
    func fly() {
        print("The eagle flies")
    }
    
}

class Penguin: Bird {
    
    func swim() {
        print("The penguin paddles")
    }
    
}


struct FlyingMuseum {
    
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
    
}

struct Airplane: CanFly  {
    
    func fly() {
        print("The plane is flying")
    }
}


let myEagle = Eagle()
let myPenguin = Penguin()
let myMuseum = FlyingMuseum()
let myAirplane = Airplane()

myEagle.fly()
myEagle.layEgg()
myEagle.soar()

myPenguin.layEgg()
myPenguin.swim()

myMuseum.flyingDemo(flyingObject: myAirplane)


