#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewNoteCell.h"

@interface NotesDatasource : NSObject<UITableViewDataSource, UITableViewDelegate, NotesCellDelegate>
@property NSMutableArray *notes;
@property (weak) UITableView *tableView;
-(void)addNote:(NSString *)note;
@end
