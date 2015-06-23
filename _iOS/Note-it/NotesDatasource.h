#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewNoteCell.h"
extern NSString * const NOTES_LIST_UPDATED;

@interface NotesDatasource : NSObject<UITableViewDataSource, UITableViewDelegate, NotesCellDelegate>
@property NSMutableArray *notes;
@property (weak) UITableView *tableView;
-(void)addNote:(NSString *)note;
@end
