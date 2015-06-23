//
//  NotesCellDelegate.h
//  Note-it
//
//  Created by Pradnya Nikam on 23/06/15.
//  Copyright (c) 2015 Prad. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NotesCellDelegate <NSObject>
@required
-(void) deleteNoteWithIndex:(NSInteger)index;
@end
