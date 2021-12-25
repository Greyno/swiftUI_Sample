# Example of Passing Data
A simple application to learn how to use SwiftUI and to pass data among views using the @EnvironmentObject wrapper. The app has a (main) Simple View where a new User can be added by using the '+' button. The '+' button calls up a 'User Details' view, where a first and last name can be entered. Once "Done", the (main) Simple View shows the first name that was added. Rows can be deleted from the Simple View. The data are presisted in the app through userDefaults.

Currently, the Simple view page uses a Text to display the first name. Goal is to create a separate SwiftUI view in place of this Text view.
