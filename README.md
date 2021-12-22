# inherited flutter example

The purpose of this project is implemented inherited Widget in flutter and understand how dependency injection and how this works.

![Screenshot from 2021-12-22 11-45-55](https://user-images.githubusercontent.com/35856303/147111274-7262983f-ce8e-47d6-83d9-2257ebd763d7.png)

![Screenshot from 2021-12-22 11-20-21](https://user-images.githubusercontent.com/35856303/147111278-48a940f3-87ed-4177-b70d-10743cf7ee3e.png)


## InheritedWidget

"Base class for widgets that efficiently propagate information down the tree.

 To obtain the nearest instance of a particular type of inherited widget from
 a build context, use [BuildContext.dependOnInheritedWidgetOfExactType].

 Inherited widgets, when referenced in this way, will cause the consumer to
 rebuild when the inherited widget itself changes state.

 {@youtube 560 315 https://www.youtube.com/watch?v=Zbm3hjPjQMk}" - taken from the documentation

## How works
The Class [User model](lib/model/user_model.dart) extends of inheritedWidget, with has some methods to facilitate dependency injection of objects.

the method updateShouldNotify verify if object is the same, if has change some data, the "Observers" of this widgets will be rebuild with new data.

in [main_data](lib/main.dart) is made declaration of objects, passing userModel attributes, to can see this object in widget tree.

All widgets in tree above their can see and watch data about User model, it's only recover using ``var user = UserModel.of(context);`` how is done in [DrawerPage](lib/home/drawer_page.dart).

it's possible because is created a method ```UserModel of(BuildContext context)``` in [User model](lib/model/user_model.dart) with can recover data.
