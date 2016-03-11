//
//  ViewModelInitializable.swift
//  App Depot
//
//  Created by Francesco Perrotti-Garcia on 3/11/16.
//  Copyright © 2016 Francesco Perrotti-Garcia. All rights reserved.
//

import Foundation

//We can change that in the future if necessary
typealias ViewModelType = Any

protocol ViewModelInitializable {
    typealias ViewModel: ViewModelType
    
    init(viewModel: ViewModel)
}
