//
//  NotesDatasource.h
//  Note-it
//
//  Created by Pradnya Nikam on 22/06/15.
//  Copyright (c) 2015 Prad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewNoteCell.h"
extern NSString * const NOTES_LIST_UPDATED;

@interface NotesDatasource : NSObject<UITableViewDataSource, UITableViewDelegate, NotesCellDelegate>
@property NSMutableArray *notes;
@end
