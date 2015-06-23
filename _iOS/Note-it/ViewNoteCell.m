//
//  ViewNoteCell.m
//  Note-it
//
//  Created by Pradnya Nikam on 22/06/15.
//  Copyright (c) 2015 Prad. All rights reserved.
//

#import "ViewNoteCell.h"

@implementation ViewNoteCell

- (IBAction)deleteNote:(id)sender {
    if(_notesCellDelegate && [_notesCellDelegate respondsToSelector:@selector(deleteNoteWithIndex:)]){
        
        [_notesCellDelegate deleteNoteWithIndex:_index];
    }
}
@end
