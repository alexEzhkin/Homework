import UIKit


class School {
    let students: [Student]
    
    init(students: [Student]) {
        self.students = students
    }
    
    func printStudentsInfo() {
        for student in students {
            print("Name: \(student.name) | Surname: \(student.surname) | ClassNumber: \(student.classNumber) | Subject with mark: \(student.subjectWithMark)\n")
        }
    }
}

struct Student {
    let name: String
    let surname: String
    
    let classNumber: Int
    
    var subjectWithMark: [(String, Int)]
    
    init(name: String = "Alex", surname: String, classNumber: Int = 7, subjectWithMark: [(String, Int)]) {
        self.name = name
        self.surname = surname
        self.classNumber = classNumber
        self.subjectWithMark = subjectWithMark
    }
    
    mutating func addSubjectWithMarkToStudent(subject: String, mark: Int) {
        let schoolSubjects = ["Math", "English", "Music", "History", "Science", "Geography", "Information technology", "Biology", "Drama", "Swimming", "Physical education"]
        let subjectMark = 0...10
        
        if subjectMark.contains(mark) && schoolSubjects.contains(subject) {
            subjectWithMark.append((subject, mark))
        }
        else {
            print("You write wrnog data")
        }
    }
    func printInformationAboutStudent() {
        let information = ("Student: \(name)" + " " + "\(surname)\n" +
                    "Class: \(classNumber)\n" +
                    "Subject with mark: \(subjectWithMark)")
        print(information)
    }
}
var alexYozhkin = Student(name: "Alex", surname: "Yozhkin", classNumber: 7, subjectWithMark: [("Math", 10)])
alexYozhkin.addSubjectWithMarkToStudent(subject: "Swimming", mark: 9)

var artemBudnikov = Student(name: "Artem", surname: "Budnikov", classNumber: 7, subjectWithMark: [("English", 5), ("Biology", 7)])

var nikitaShatukha = Student(name: "Nikita", surname: "Shatukha", classNumber: 10, subjectWithMark: [("Math", 4), ("History", 9)])

let studentsArray = [alexYozhkin, artemBudnikov, nikitaShatukha]

let studentsInformation = School(students: studentsArray)
studentsInformation.printStudentsInfo()

alexYozhkin.printInformationAboutStudent()

