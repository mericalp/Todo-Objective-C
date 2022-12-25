//
//  TodoViewController.m
//  Todo
//
//  Created by Meric on 25.12.2022.
//

#import "TodoViewController.h"
#import "TodoSectionController.h"
#import <IGListKit.h>


@interface TodoViewController ()<IGListAdapterDataSource>

@end

@implementation TodoViewController

- (void)loadView {
    IGListAdapterUpdater *updater = [[IGListAdapterUpdater alloc] init];
    IGListAdapter *adapter = [[IGListAdapter alloc] initWithUpdater:updater viewController: self];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame: CGRectZero collectionViewLayout:layout];
    adapter.collectionView = collectionView;
    adapter.dataSource = self;
    adapter = adapter;
    
    self.view = collectionView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Todos";
    self.view.backgroundColor = [UIColor whiteColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    
- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
   // 
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
    return [[TodoSectionController alloc] init ];
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}


@end
