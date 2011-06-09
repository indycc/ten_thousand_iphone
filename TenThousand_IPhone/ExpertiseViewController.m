//
//  ExpertiseViewController.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExpertiseViewController.h"
#import "ExpertiseDetail.h"
#import "AddExpertiseViewController.h"


@implementation ExpertiseViewController


-(void)didAddExpertise:(TTExpertise *)expertise{
    
    if(expertise != nil){
        [TTRepository addExpertise:expertise];
        [[self tableView] reloadData];
    }
    [self.navigationController dismissModalViewControllerAnimated:YES];
}
-(void)addExpertiseViewController:(AddExpertiseViewController*)addViewController didAddExpertise:(TTExpertise*)expertise{
    
    if(expertise != nil){
        [TTRepository addExpertise:expertise];
        [[self tableView] reloadData];
    }
    [self.navigationController dismissModalViewControllerAnimated:YES];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - some button things

-(void)addExpertise:(id)sender{    
    AddExpertiseViewController* addController = [[AddExpertiseViewController alloc] init];
    [addController setExpertise:[[TTExpertise alloc] init]];
    addController.delegate = self;
    [self presentModalViewController:addController animated:YES];
}
-(UIBarButtonItem*) addButtonItem{
    UIBarButtonItem* barItem =
            [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                           target:self
                                                           action:@selector(addExpertise:)]
                                autorelease];
    return barItem;
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Expertise";
    [[self navigationItem] setLeftBarButtonItem: [self editButtonItem]];
    [self.navigationItem setRightBarButtonItem: [self addButtonItem]];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[TTRepository expertises] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    int row = indexPath.row;
    TTExpertise *expertise = [[TTRepository expertises] objectAtIndex:row];
    cell.textLabel.text = expertise.expertiseName;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [[TTRepository expertises] removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{    
    [TTRepository moveExpertiseFrom:fromIndexPath.row to:toIndexPath.row];

}


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(!detailViewController){
        detailViewController = [[ExpertiseDetail alloc] init];
    }
    int row = indexPath.row;
    
    [detailViewController setExpertise:[[TTRepository expertises] objectAtIndex:row]];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
