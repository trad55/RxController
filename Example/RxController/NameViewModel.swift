//
//  NameViewModel.swift
//  RxController_Example
//
//  Created by Meng Li on 2019/04/16.
//  Copyright © 2019 MuShare. All rights reserved.
//

import RxSwift
import RxCocoa
import RxController
import Fakery

class NameViewModel: RxChildViewModel {
    
    private let faker = Faker(locale: "nb-NO")

    func updateName() {
        accept(event: InfoEvent.name(faker.name.name()))
    }
    
    var name: Observable<String?> {
        return parentEvents.map {
            guard let events = $0 as? InfoEvent, case let .name(name) = events else {
                return nil
            }
            return name
        }
    }
    
    var number: Observable<String?> {
        return Observable.just("1234567890")
    }
    
}
