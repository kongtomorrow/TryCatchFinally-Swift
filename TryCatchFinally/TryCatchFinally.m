//
//  TryCatchFinally.m
//  TryCatchFinally
//
//  Created by Ken Ferry on 1/7/15.
//  Copyright (c) 2015 Understudy. All rights reserved.
//

#import "TryCatchFinally.h"

void tryCatchFinally(void(^tryBlock)(), void(^catchBlock)(NSException *e), void(^finallyBlock)()) {
    @try {
        tryBlock();
    }
    @catch (NSException *exception) {
        catchBlock(exception);
    }
    @finally {
        finallyBlock();
    }
}