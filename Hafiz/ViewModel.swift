//
//  ViewModel.swift
//  Hafiz
//
//  Created by Syafiq Mastor on 22/03/2020.
//  Copyright © 2020 syafiq. All rights reserved.
//

import Foundation


class ViewModel {
    
    
    struct Requirement {
        var isConditionA : Bool = false
        var isConditionB : Bool = false
    }
    
    
    private var requirement : Requirement?
    var formArray : [Form] = []
    init() { }
    
    init(requirement : Requirement) {
        self.requirement = requirement
        callAPI()
    }
    
    private func start() {
        guard let requirement = requirement else { return }
        
        if requirement.isConditionA {
            //buat something if needed
        }
    }
    
   
    private func callAPI() {
        guard let requirement = requirement else { return }
        formArray.removeAll()
        if requirement.isConditionA {
            formArray.append(contentsOf: [
                Form(title: "Name", subtitle: "Nama", imageUrl: ""),
                Form(title: "Date", subtitle: "tarikh", imageUrl: ""),
                Form(title: "Address", subtitle: "Alamat", imageUrl: ""),
            ])
        }
        
        if requirement.isConditionB {
            formArray.append(contentsOf: [
                Form(title: "Hai", subtitle: "Nama", imageUrl: ""),
                Form(title: "Hellow", subtitle: "tarikh", imageUrl: ""),
                Form(title: "Apa Khabar", subtitle: "Alamat", imageUrl: ""),
            ])
        }
        
        start()
    }
}
