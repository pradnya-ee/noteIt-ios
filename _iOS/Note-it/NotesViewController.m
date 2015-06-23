//
//  ViewController.m
//  Note-it
//
//  Created by Pradnya Nikam on 22/06/15.
//  Copyright (c) 2015 Prad. All rights reserved.
//

#import "NotesViewController.h"
#import "NotesDatasource.h"

@interface NotesViewController ()
@property NotesDatasource * notesDatasource;
@end

@implementation NotesViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    _notesDatasource = [NotesDatasource new];
    [self.tableView setDataSource:_notesDatasource];
    [self.tableView setDelegate:_notesDatasource];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateNotesList) name:NOTES_LIST_UPDATED object:nil];
}
-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateNotesList{
    [self.tableView reloadData];
}
@end
