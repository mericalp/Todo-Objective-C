//
//  TodoCell.h
//  Todo
//
//  Created by Meric on 25.12.2022.
//

#import <UIKit/UIKit.h>
#import "MaterialButtons.h"

NS_ASSUME_NONNULL_BEGIN

@interface TodoCell : UICollectionViewCell

@property(nonatomic, copy) NSString *text;
@property(nonatomic, readonly) MDCButton *deleteButton;

@end

NS_ASSUME_NONNULL_END
