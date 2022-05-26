//
//  CoordinatorProtocol.swift
//  FileManager
//
//  Created by Ален Авако on 25.05.2022.
//

import Foundation

public protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] {get set}
}
