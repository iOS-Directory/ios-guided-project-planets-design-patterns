//
//  Notifications.swift
//  Planets
//
//  Created by FGT MAC on 4/12/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import Foundation

//Create an extention to avoid dealing with strings directly
//Instad of calling "shouldPlutoValueChanges" we call .shouldShowPlutoChanged
extension NSNotification.Name {
    static let shouldShowPlutoChanged = NSNotification.Name("shouldPlutoValueChanges")
}
