#import <Foundation/Foundation.h>

@protocol NotesCellDelegate <NSObject>
@required
-(void) deleteNoteWithIndex:(NSInteger)index;
@end
