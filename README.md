# Checklist

## Starting on Checklist App
 
## TableView Notes

- Tables display data in cells
- When a row is no longer displayed on screen the cell is reused
- Static cells CAN ONLY be used with a Tableview Object

## TableView Delegate methods

- The below method allows the user the click on the tableview and then cell deselects itself
```swift

 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

```

- The below method prevents the user from selecting the cell by returning nil/

```swift

override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        return nil
    }
```

It is also a good idea to turn off the tableview color selection property. Go to the Attributes inspector  and set the Selection to none.

## MVC

- Model: Contains your data and any operations on the data
- View: Visual parts of the app: Buttons, labels, images, tableview cells,
- Controller: Is an object that connects the data to the views. Know as the view controller

- view: is something that draws something on screen such as a button or label 

- A good object-oriented design principle is to let objects change there own states as much as possible!! 

## NavigationController

- The below line makes the title large.

“Note: Apple does not recommend using large titles for all of your screens. Rather, their recommendation is to use large titles on your main screen and any other subsequent screens where it might make sense to have a prominent title. You will learn how to turn off large titles for secondary views later on.”

Excerpt From: “iOS Apprentice.” iBooks.
```swift

navigationController?.navigationBar.prefersLargeTitles = true
```
## Deallocated
- When a reference goes away or an object is destoryed then that memory because available again.

## Automatic Reference Counting

- ARC manages the lifetime of the objects in your app


