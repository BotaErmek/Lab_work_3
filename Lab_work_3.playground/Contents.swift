/*struct Student {
    let firstName: String
    let lastName: String
    let averageGrade: Double
}

struct StudentJournal {
    var students: [Student] = []
    
    mutating func addStudent(firstName: String, lastName: String, averageGrade: Double) {
        let student = Student(firstName: firstName, lastName: lastName, averageGrade: averageGrade)
        students.append(student)
    }
    
    mutating func removeStudent(firstName: String, lastName: String) {
        students.removeAll { $0.firstName == firstName && $0.lastName == lastName }
    }
    
    func displayStudents() {
        for student in students {
            print("Name: \(student.firstName) \(student.lastName), GPA: \(student.averageGrade)")
        }
    }
    
    func averageGradeOfAllStudents() -> Double {
        let totalGrade = students.reduce(0.0) { $0 + $1.averageGrade }
        return totalGrade / Double(students.count)
    }
    
    func studentWithHighestGPA() -> Student? {
        return students.max(by: { $0.averageGrade < $1.averageGrade })
    }
    
    mutating func sortStudentsByGPA() {
        students.sort(by: { $0.averageGrade > $1.averageGrade })
    }
}

// Example Usage
var journal = StudentJournal()
journal.addStudent(firstName: "Akbota", lastName: "Ermekkalieva", averageGrade: 4.0)
journal.addStudent(firstName: "Samat", lastName: "Ospanov", averageGrade: 3.2)
journal.addStudent(firstName: "Alina", lastName: "Armanova", averageGrade: 4.0)

journal.displayStudents()

print("Average Grade of All Students: \(journal.averageGradeOfAllStudents())")

if let topStudent = journal.studentWithHighestGPA() {
    print("Student with the highest GPA: \(topStudent.firstName) \(topStudent.lastName), GPA: \(topStudent.averageGrade)")
}

journal.sortStudentsByGPA()
journal.displayStudents()*/



struct Task {
    let title: String
    let description: String
    var isCompleted: Bool
}

struct ToDoList {
    var tasks: [Task] = []
    
    mutating func addTask(title: String, description: String) {
        let task = Task(title: title, description: description, isCompleted: false)
        tasks.append(task)
    }
    
    mutating func removeTask(title: String) {
        tasks.removeAll { $0.title == title }
    }
    
    mutating func markTaskAsCompleted(title: String) {
        if let index = tasks.firstIndex(where: { $0.title == title }) {
            tasks[index].isCompleted = true
        }
    }
    
    func displayTasks() {
        for task in tasks {
            print("Title: \(task.title), Description: \(task.description), Completed: \(task.isCompleted ? "Yes" : "No")")
        }
    }
    
    func displayCompletedTasks() {
        let completedTasks = tasks.filter { $0.isCompleted }
        print("Completed Tasks:")
        for task in completedTasks {
            print("Title: \(task.title), Description: \(task.description)")
        }
    }
    
    func displayOutstandingTasks() {
        let outstandingTasks = tasks.filter { !$0.isCompleted }
        print("Outstanding Tasks:")
        for task in outstandingTasks {
            print("Title: \(task.title), Description: \(task.description)")
        }
    }
    
    mutating func clearCompletedTasks() {
        tasks.removeAll { $0.isCompleted }
    }
}

// Example Usage
var todoList = ToDoList()
todoList.addTask(title: "Complete Assignment", description: "Finish the programming tasks.")
todoList.addTask(title: "Go for a Run", description: "Exercise for 30 minutes.")

todoList.displayTasks()

todoList.markTaskAsCompleted(title: "Complete Assignment")

todoList.displayCompletedTasks()
todoList.displayOutstandingTasks()

todoList.clearCompletedTasks()

todoList.displayTasks()
