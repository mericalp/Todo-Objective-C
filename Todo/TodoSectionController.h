//
//  TodoSectionController.h
//  Todo
//
//  Created by Meric on 25.12.2022.
//

#import "IGListSectionController.h"
#import <IGListKit/IGListKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TodoSectionController : IGListSectionController
- (instancetype)initWithTodos:(NSArray<NSString *> *)todos deleteCallback:(void (^)(NSInteger index))deleteCallback;

@end

NS_ASSUME_NONNULL_END
