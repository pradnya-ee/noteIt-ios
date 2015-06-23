#import "NotesViewController.h"
#import "NotesDatasource.h"

@interface NotesViewController ()
@property NotesDatasource * notesDatasource;
@end

@implementation NotesViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //setting up datasource for table
    _notesDatasource = [NotesDatasource new];
    [self.tableView setDataSource:_notesDatasource];
    [self.tableView setDelegate:_notesDatasource];
    _notesDatasource.tableView = _tableView;
    
    //to dismiss keyboard on tap..
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];

}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (IBAction)addNote:(id)sender {
    [self dismissKeyboard];
    [_notesDatasource addNote:self.noteTextToAdd.text];
    self.noteTextToAdd.text = @"";
}

-(void)dismissKeyboard{
    [_noteTextToAdd resignFirstResponder];
}

#pragma mark - UITextFieldDelegate

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
