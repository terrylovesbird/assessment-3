let nextListId = 0
let taskList = []
const taskListKey = "tasks"

localStorage.setItem("some_number", "7")

initializeData()


function initializeData() {
  let stringData = localStorage.getItem(taskListKey)
  if (stringData) {
    // convert string stored in local storage to JS array
    taskList = JSON.parse(stringData)

    // add each task name to an unordered list on the page
    for (let i = 0; i < taskList.length; i++) {
      addTaskToPage(taskList[i])
    }
  }
}


function addTask(x) {
  // find input element
  
  // grab text from input
  let taskName = x;

  addTaskToPage(taskName)

  // add task to localStorage
  taskList.push(taskName)
  stringData = JSON.stringify(taskList)
  localStorage.setItem(taskListKey, stringData)

}


function addTaskToPage(taskName) {

  // find existing parent list element
  let taskListElement = document.getElementById("shopping-cart-list")
  if (!taskListElement) {
    return
  }

  // create a new list item
  let newListItem = document.createElement("li")
  newListItem.id = "list-item-" + nextListId
  nextListId += 1
  
  // add text to new list item
  newListItem.innerHTML = taskName

  // add list item to existing list
  taskListElement.appendChild(newListItem)
}

