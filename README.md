A new Flutter project.

It was a fun project!

I use GETX for state management, and also try to implement a little bit of clean architecture.


In the Folder, CORE, there are all the principal configurations for the core of the project, so the project can evolve in the future. The Second folder it's GALLERY, in there you will find all the builds for the project.


There are 4 screens, and in ROUTES you will find the management for the navigation:

1. Splash Screen. 
2. Gallery Screen. 
3. BigPicture Screen. 
4. AuthorReference Screen.


3 of the 4 screens have their controller.


Also, you can find all the personalized Widgets, in the folder WIDGET.

I try to implement a clean chain of data, but that specific feature will come in the future when I have more time.

ENTITIES ==> MODELS ==> USECASES ==> REPOSITORY ==> REPOSITORY IMPL ==> USECASE ==> FACTORY ==> FINAL DATA

Next Update:
1. Implente a good Dio lens, for visualization of the variables and request.
2. Error Management.
3. Add new features for Search and personalization of the gallery.
4. Regionalization.
5. HTTP Client for more personalization calls to the server.
6. Unit Testing.
7. Firebase Login.
  
