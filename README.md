CS378: Framework-Based Software Development for Hand-Held Devices
Project #2

The goal of this project is to design and code a new Flutter app about things to do in Chicago. Your
app will consist of a single screen containing three tabs containing information about (1) Chicago
restaurants, (2) Chicago sports teams (e.g., the Chicago Bulls, the Chicago Fire, etc.), and (3)
Chicago attractions (e.g., the Steppenwolf theatre, the Lincoln Park Zoo, the Lyric Opera House, the
Museum of Science, etc.)
The display of your app will consist of an AppBar bearing the title “Explore Chicago”, a body and a
flexible action button. The background of the AppBar will be a flex space displaying a picture of
your choice of Chicago. The AppBar will contain a TabBar with three tabs, one each for restaurants,
sports teams and theaters. Initially, the app will display the third tab, that is, Chicago
attractions.
The three tabs will each contain a list view of at least 5 items, whether restaurants, sports teams,
or attractions. Items in the list should be displayed as a boxes with rounded corners; the boxes
should be clearly separated from each other. Each box will have an appropriate amount of padding and
contain the following items:

1. A thumbnail picture of the item (e.g., a picture of a restaurant) on the left side of the box.
   The shape of the picture should be roughly square.
2. A title in the top center of the box.
3. The street address of the attraction below the title in the center of the box. The address should
   be aligned on the left side with the title above. For the sports teams, put the address of their
   home arena (e.g., the address of Wrigley Field for the Chicago Cubs.) The street address should
   take no more than two lines in the box.
4. Finally, the bottom right corner of each box has the usual thumbs-up and thumbs-down icon buttons
   for the likes and dislikes of the attractions. The number of button presses is shown next to each
   of the two icon buttons. The order of the attractions in the boxes should match the attractions
   in the first tab.
   Finally, the items in each list should interact with the user. Whenever the user clicks on an
   item, an AlertDialog will appear on the screen stating the item that was clicked (e.g., “You
   clicked on the Chicago Zoo”). The dialog will disappear when the user clicks on the “OK” button
   in the bottom right corner of the alert dialog. Make sure that the alert dialog uses appropriate
   padding for its content.
   Pressing the flexible action button will show a SnackBar message indicating the tab currently
   being displayed. The SnackBar will include an action button that dismisses the Snackbar.
   Implementation notes. To test your app use a Pixel 5 Android Virtual Device running Android 13 (
   API 33). Design your app in such a way that it will display optimally in portrait mode; don’t
   worry about landscape mode.

You must work alone on this project. You can discuss general design decisions on Piazza but refrain
from posting project code. Submit the entire Studio project as a zip archive using the submission
link in the assignment’s page on Blackboard. The archive should be
named <FirstName LastName mp2.zip>.
