#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NotesCellDelegate.h"

@interface ViewNoteCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteText;
@property NSInteger index;
@property (weak) id<NotesCellDelegate> notesCellDelegate;

- (IBAction)deleteNote:(id)sender;

@end
