#import <UIKit/UIKit.h>

@interface NotesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *noteTextToAdd;

- (IBAction)addNote:(id)sender;
@end

