//
//  CucumberishInitializer.swift
//  AFTodoListAppUITests
//
//  Created by Arifin Firdaus on 23/10/20.
//

import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
        
        before { _ in
            // write test
        }
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(
            inDirectory: "Features",
            from: bundle,
            includeTags: nil,
            excludeTags: nil
        )
    }
}
