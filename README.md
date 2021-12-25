# Example of Passing Data
A simple application to learn how to use SwiftUI and to pass data among views using the @EnvironmentObject wrapper. The app has a (main) Simple View where a new User can be added by using the '+' button. The '+' button calls up a 'User Details' view, where a first and last name can be entered. Once "Done", the (main) Simple View shows the first name that was added. When a first name is selected from the main view, it can be edited and will be updated in the Simple view. Rows can be deleted from the Simple View. The data are presisted in the app through User Defaults.

Currently, the Simple view page uses a Text to display the first name. The goal is to create a separate SwiftUI view in place of this Text view.
