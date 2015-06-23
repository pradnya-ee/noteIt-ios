#import "NotesDatasource.h"

NSString * const VIEW_NOTE_CELL_IDENTIFIER = @"view-note";
NSString * const CREATE_NOTE_CELL_IDENTIFIER = @"create-note";

@implementation NotesDatasource

-(instancetype)init{
    self = [super init];
    if (self) {
        _notes = [NSMutableArray arrayWithObjects:@"buy milk",@"pay bills",@"pay more bills!", nil];
    }
    return self;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _notes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ViewNoteCell *viewNoteCell = (ViewNoteCell *)[tableView dequeueReusableCellWithIdentifier:VIEW_NOTE_CELL_IDENTIFIER];
    [viewNoteCell.noteText setText:_notes[indexPath.row]];
    viewNoteCell.index = indexPath.row;
    viewNoteCell.notesCellDelegate = self;
    return viewNoteCell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

#pragma mark - NotesCellDelegate

-(void) deleteNoteWithIndex:(NSInteger)index
{
    [_notes removeObjectAtIndex:index];

    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath  indexPathForRow:index inSection:0]] withRowAnimation:UITableViewRowAnimationRight];
    [self.tableView reloadData];
}

#pragma mark - Add Note
-(void)addNote:(NSString *)note{
    [_notes addObject:note];
    NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:(_notes.count-1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
}

@end
