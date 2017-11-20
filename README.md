# Checklist

## Starting on Checklist App

- Make tableview
- 
## TableView

- Tables display data in cells
- When a row is no longer displayed on screen the cell is reused

## TableView Delegate methods

- The below method allows the user the click on the tableview and then cell deselects itself
```swift

 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

```
## MVC

- Model: Contains your data and any operations on the data
- View: Visual parts of the app: Buttons, labels, images, tableview cells,
- Controller: Is an object that connects the data to the views. Know as the view controller

- view: is something that draws something on screen such as a button or label 
:
