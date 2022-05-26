//
//  Extensions.swift
//  FileManager
//
//  Created by Ален Авако on 25.05.2022.
//

import UIKit

extension URL {
    var isDirectory: Bool {
       (try? resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory == true
    }
}
