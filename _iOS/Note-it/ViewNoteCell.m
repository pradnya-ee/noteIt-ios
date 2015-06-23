#import "ViewNoteCell.h"

@implementation ViewNoteCell

- (IBAction)deleteNote:(id)sender {
    if(_notesCellDelegate && [_notesCellDelegate respondsToSelector:@selector(deleteNoteWithIndex:)]){
        
        [_notesCellDelegate deleteNoteWithIndex:_index];
    }
}
@end
