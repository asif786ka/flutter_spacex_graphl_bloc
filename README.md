# flutterspacexlatest

## Notes
Flutter project that uses bloc pattern to show spacex graphql data in listview.
##
The date you're submitting this.
12th October 2021
### Instructions for how to build & run the app
Installation
Check if you are in the beta channel of flutter SDK and the version v2.0.1 or higher. Instruction to change flutter channel.
Clone the repo
git clone https://github.com/asif786ka/flutter_spacex_graphl_bloc.git
And then we can use the normal build and run procedure
flutter pub get
flutter run
Some files like *.freezed.dart, *.g.dart, *.iconfig.dart are auto generated. If there is any issue from these files just run this command to regenerate them.
flutter pub run build_runner watch --delete-conflicting-outputs
### Time spent
6 hours
### Assumptions made
Used the bloc pattern to pull data from https://api.spacex.land/graphql/.

### Assume your application will go into production...
1. What would be your approach to ensuring the application is ready for production (testing)?
a) Make sure the app runs on all android devices and platforms.
b) Make sure the app runs on all iOS devices and platforms.
c) All unit tests are passing.
d) No sensitive data is being stored in the mobile app.
e) Licenses and keys are properly protected.
f) ssl is properly implemented for security.
2. How would you ensure a smooth user experience as 1000s of users start using your app simultaneously?
a) Make sure long running tasks are handled in the background to have a seamless user experience.
b) Make sure no app component is cosuming user battery or network bandwidth.
3. What key steps would you take to ensure application security?
a) SSL is properly implemented.
b) Code obfuscation like proguard on android is properly implemented.
c) No sensitive user data is stored on mobile.
### Shortcuts/Compromises made
Did you do something that you feel could have been done better in a real-world application? Or were you short on time and not able to include something that you want us to know about? Please list it here.
### Why did you choose the specific technology/patterns/libraries?
a) Flutter and dart. To target both android and iOS users more quickly.
b) Great documentation provided by Google compared to react native.
c) Nice animations and ui/ux available in flutter.
What were your considerations behind choosing the technology/patterns/libraries used in the app?
### Stretch goals attempted
1) App data is locally stored to avoid using network bandwidth.
2) Navigator 2.0 route is implemented.
3) Unit tests are properly handled.
4) Implemented pagination in launches tab.
If applicable, use this area to tell us what stretch goals you attempted. What went well? What do you wish you could have done better? If you didn't attempt any of the stretch goals, feel free to let us know why.
### Other information about your submission that you feel it's important that we know.
### Your feedback on this technical challenge
Have feedback for how we could make this assignment better? Please let us know.
