//
//  CucumberishLoader.m
//  AFTodoListAppUITests
//
//  Created by Arifin Firdaus on 23/10/20.
//

#import <Foundation/Foundation.h>
#import "AFTodoListAppUITests-Swift.h"

__attribute__((constructor))
void CucumberishInit() {
    [CucumberishInitializer setupCucumberish];
}
