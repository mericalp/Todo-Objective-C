//
//  TodoSectionController.m
//  Todo
//
//  Created by Meric on 25.12.2022.
//

#import "TodoSectionController.h"
#import "TodoCell.h"

@implementation TodoSectionController

- (CGSize)sizeForItemAtIndex:(NSInteger)index{
    return CGSizeMake(self.collectionContext.containerSize.width, 48);
}

- (__kindof UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    TodoCell *cell = [self.collectionContext dequeueReusableCellOfClass:[TodoCell class] forSectionController: self  atIndex:index];
    return cell;
}

- (NSInteger)numberOfItems {
    return 4;
}

- (CGFloat)minimumLineSpacing {
    return 8;
}

@end

