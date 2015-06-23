//
//  ViewNoteCell.h
//  Note-it
//
//  Created by Pradnya Nikam on 22/06/15.
//  Copyright (c) 2015 Prad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NotesCellDelegate.h"

@interface ViewNoteCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *noteText;
@property NSInteger index;
@property (weak) id<NotesCellDelegate> notesCellDelegate;

- (IBAction)deleteNote:(id)sender;

@end
