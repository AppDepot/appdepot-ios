//
//  StartViewController.swift
//  App Depot
//
//  Created by Francesco Perrotti-Garcia on 3/11/16.
//  Copyright © 2016 Francesco Perrotti-Garcia. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    override func viewDidAppear(animated: Bool) {
        let app = App(name: "Test app")
        let viewModel = AppListViewModel(apps: Array.init(count: 100, repeatedValue: app))
        
        let viewController = AppListTableViewController(viewModel: viewModel)
        
        presentViewController(viewController, animated: true, completion: .None)
    }
}