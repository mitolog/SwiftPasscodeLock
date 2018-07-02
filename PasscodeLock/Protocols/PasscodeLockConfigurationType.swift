//
//  PasscodeLockConfigurationType.swift
//  PasscodeLock
//
//  Created by Yanko Dimitrov on 8/28/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import Foundation

public protocol PasscodeLockConfigurationType {
    
    var repository: PasscodeRepositoryType {get}
    var passcodeLength: Int {get}
    var isTouchIDAllowed: Bool {get set}
    var shouldRequestTouchIDImmediately: Bool {get}
    var touchIdReason: String? {get set}
    var maximumInccorectPasscodeAttempts: Int {get}

    var deleteButtonImage: UIImage? {get set}
    var cancelButtonImage: UIImage? {get set}
    var numberPadTintColor: UIColor? {get set}
    var placeHolderFillColor: UIColor? {get set}
    var placeHolderBorderColor: UIColor? {get set}
    var placeHolderErrorColor: UIColor? {get set}
    var titleFont: UIFont? {get set}
    var subTitleFont: UIFont? {get set}
}

// set configuration optionals
public extension PasscodeLockConfigurationType {
    var passcodeLength: Int {
        return 4
    }
    
    var maximumInccorectPasscodeAttempts: Int {
        return -1
    }

    var numberPadTintColor: UIColor? {
        return UIColor.white
    }

    var placeHolderFillColor: UIColor? {
        return UIColor.white
    }
    
    var placeHolderBorderColor: UIColor? {
        return UIColor.gray
    }

    var placeHolderErrorColor: UIColor? {
        return UIColor.gray
    }
    var titleFont: UIFont? {
        return UIFont.systemFont(ofSize: 19)
    }
    var subTitleFont: UIFont? {
        return UIFont.systemFont(ofSize: 15)
    }
}
