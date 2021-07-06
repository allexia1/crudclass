//
//  main.swift
//  crudzin
//
//  Created by Allexia Azevedo de Morais on 01/07/21.
//

import Foundation
// setting mouths


enum Month: Int {
    
    case jan = 1
    case feb = 2
    case mar = 3
    case apr = 4
    case may = 5
    case jun = 6
    case jul = 7
    case ago = 8
    case sep = 9
    case oct = 10
    case nov = 11
    case dec = 12
    //* Listar os alunos aniversariantes do mês

    
//    func nameMonth(a: Int) -> String {
//        print(<#T##items: Any...##Any#>)
//    }
}

// setting codes of courses
enum CodCourse: Int {
    
    case noCourse = 0
    case adm = 1
    case eng = 2
    case eco = 3
    case law = 4
    case med = 5
    
    // fun de count anual (como q eu conto ano?) e % por case
    //* Listar todos os alunos por curso
    
}

// if course is an engineering, here we are specifying
enum CodEng: Int {
    case ele = 1
    case mec = 2
    case che = 3
    case com = 4
}
// setting a code for the occupations
enum Role: Int {
    case noRole = 0
    case Pro = 1
    case door = 2
    case dir = 3
    case cle = 4
    case psi = 5
    case nur = 6
    case lab = 7
    // criar uma func pra * Aumentar o salário, em X%, de todos os funcionários por cargo
    //* Listar todos os funcionários por cargo
//
    
enum Options: Int {
    case student = 1
    case employee = 2
}

}
class Person {
    var id : Int = 0
    var name: String = ""
    var cpf: String = ""
    var age: Int = 0
    var tel: String = ""
    var email: String = ""
    
    init(id: Int, name: String, cpf: String, age: Int, tel: String, email: String) {
        self.id = newID(id: id)
        self.name = name
        self.cpf = cpf
        self.age = age
        self.tel = tel
        self.email = email
        
    }
    
    func newID (id: Int) -> Int {
        
        let ID: Int = id + 1
        return ID
    }
    
    func info() {
        print("\nID: \(self.id), Nome:\(self.name), CPF: \(self.cpf), Idade: \(self.age), Telefone: \(self.tel), e-mail: \(self.email)", terminator:"")
    }
}

class Student: Person {
    var mp: Double = 0.0
    var course: CodCourse = CodCourse(rawValue: 0)!
    var month: Month = Month(rawValue: 1)!
    
    
    init(id: Int, name: String, cpf: String, age: Int, tel: String, email: String, mp: Double, course: CodCourse, month: Month) {
        self.mp = mp
        self.course = course
        self.month = month
        super.init(id: id, name: name, cpf: cpf, age: age, tel: tel, email: email)
        
        //5% interest increase
        func feesMonthly(a: Double) -> Double {
            self.mp * 1.05
        }
    }
    
    func applyRaise (raiseAmount: Double) {
        self.mp = self.mp * (1 + (raiseAmount / 100))
    }
    
    override func info() {
        super.info()
        print(", Mensalidade: \(self.mp), Curso: \(self.course), Mês de Nascimento: \(self.month) - ESTUDANTE")
    }

    //metodo 1: selecinar um mes e mostrar todos os alunos aniversariantes daquele mes
    // método 2: aplicar em mp a % do curso
}

class Employee: Person{

    var role: Role = Role(rawValue: 0)!
    var pay: Double = 0.0

    
    init(id: Int, name: String, cpf: String, age: Int, tel: String, email: String, role: Role, pay: Double) {
        self.role = role
        self.pay = pay
        super.init(id: id, name: name, cpf: cpf, age: age, tel: tel, email: email)
    }
    
    func applyRaise (raiseAmount: Double) {
        self.pay = self.pay * (1 + (raiseAmount / 100))
    }
    
    override func info() {
        super.info()
        print(", Cargo: \(self.role), Salário: \(self.pay) - FUNCIONÁRIO")
    }
     func feesPayment(a: Double) -> Double {
        self.pay * 1.05
    }
    func ShowEmployeePerRole(data_base: [[String]]) {
        var i = 0
        print("Lista de selecione o cargo desejado: ")
        for k in listOfPeople{
            let roleAux1 = readLine()
            let roleAux = Int(roleAux1 ?? "") ?? .zero
            if (roleAux == 1){
                print("\(i) funcionários trabalhando como professor \(k)")
            }else if (roleAux == 2) {
                print("\(i) funcionários trabalhando como professor \(k)")
            }else if (roleAux == 3){
                    print("\(i) funcionários trabalhando como professor \(k)")
            }else {
                print("\(i) funcionários trabalhando como professor \(k)")

            }

            //
            i += 1
        }
    }
    // método 2: aplicar em mp a % do de ocu
}

func registerStudent() -> Student{

    print("Qual o ID? ")
    let id = readLine()
    let id1 = Int(id ?? "") ?? .zero
    print("Qual o Nome? ")
    let name1 = readLine()
    print("Qual o CPF? ")
    let cpf1 = readLine()
    print("Qual a Idade? ")
    let age = readLine()
    let age1 = Int(age ?? "") ?? .zero
    print("Qual o Telefone? ")
    let tel1 = readLine()
    print("Qual o email? ")
    let email1 = readLine()
    print("Qual a mensalidade? ")
    let mp = readLine()
    let mp1 = Double(mp ?? "") ?? .zero
    print("Qual o Curso? ")
    let course = readLine()
    let courseAux:Int = Int(course ?? "") ?? .zero
    let course1: CodCourse = CodCourse(rawValue: courseAux)!
    print("Qual o Mês de Aniversário? ")
    let month = readLine()
    let monthAux:Int = Int(month ?? "") ?? .zero
    let month1: Month = Month(rawValue: monthAux)!

    let user = Student(id: id1, name: name1!, cpf: cpf1!, age: age1, tel: tel1!, email: email1!, mp: mp1, course: course1, month: month1)
    
    print("Estudante cadastrado com sucesso!")
    return user

}

func registerEmployee() -> Employee{

    print("Qual o ID? ")
    let id = readLine()
    let id1 = Int(id ?? "") ?? .zero
    print("Qual o Nome? ")
    let name1 = readLine()
    print("Qual o CPF? ")
    let cpf1 = readLine()
    print("Qual a Idade? ")
    let age = readLine()
    let age1 = Int(age ?? "") ?? .zero
    print("Qual o Telefone? ")
    let tel1 = readLine()
    print("Qual o email? ")
    let email1 = readLine()
    print("Qual o Cargo? ")
    let role = readLine()
    let roleAux:Int = Int(role ?? "") ?? .zero
    let role1: Role = Role(rawValue: roleAux)!
    print("Qual a Salário? ")
    let pay = readLine()
    let pay1 = Double(pay ?? "") ?? .zero

    let user = Employee(id: id1, name: name1!, cpf: cpf1!, age: age1, tel: tel1!, email: email1!, role: role1, pay: pay1)

    print("Funcionário cadastrado com sucesso!")
    return user

}

func listArray (list: [Person]) {
    var i: Int = 0
    for k in list {
        print("INDEX: \(i)", terminator:"")
        k.info()
        i += 1
    }
}


//class countdays{
//    let firstDate = Date.init()
//    let secondDate = (firstDate + 365)
//
//
//
//    // Replace the hour (time) of both dates with 00:00
//    let date1 = calendar.startOfDay(for: firstDate)
//    let date2 = calendar.startOfDay(for: secondDate)
//
//    let components = calendar.dateComponents([.day], from: date1, to: date2)
//    return components.day
//}
//
////criar array dos cadastros de alunos e funcionários
////setar comandos para chamar os métodos das classes.q

var continueLoop: Bool = true
var listOfPeople: [Person] = []
//var listOfStudents: [Student] = []
//var listOfEmployees: [Employee] = []


while continueLoop {
    if (listOfPeople.count == 0) {
        print("Pressione [1] para iniciar o primeiro cadastro")
        let a = readLine()
        if a != "1"{
            print("Opção inválida. Pressione [1] para iniciar o primeiro cadastro")
        }
    }
    else{
        
        print("O que deseja fazer?") //CRUD - Create, Read, Update and Delete
        print("[1] Criar")
        print("[2] Ler")
        print("[3] Atulizar")
        print("[4] Excluir")
        print("[5] N/A")
    }
        let a = readLine()
        let answer = Int(a ?? "") ?? .zero
    
        switch answer {
        case 1:
            print("Deseja cadastrar um Estudante ou um Funcionário ")
            print("[1] Estudante")
            print("[2] Funcionário")
            let a = readLine()
            let answer = Int(a ?? "") ?? .zero

            switch answer {
            case 1:
                let user = registerStudent()
                listOfPeople.append(user)
                //listOfStudents.append(user)
                
            case 2:
                let user = registerEmployee()
                listOfPeople.append(user)
                //listOfEmployees.append(user)
            default:
                print("Opção Inválida!")
            }
        
        case 2:
            listArray(list: listOfPeople)
        case 3:
            listArray(list: listOfPeople)
            print("Qual o INDEX que deseja modificar? ")
            let b = readLine()
            let bb = Int(b ?? "") ?? .zero
            listOfPeople.remove(at: bb)
            print("Qual o nome do usuário?")
//            let name = readLine()
//            user.append(name ?? "")
//            listOfPersons.append(user)
//            user = []
        case 4:
            listArray(list: listOfPeople)
            print("Qual o INDEX que deseja excluir? ")
            let b = readLine()
            let bb = Int(b ?? "") ?? .zero
            listOfPeople.remove(at: bb)
            
        case 5:
            print("", terminator:"")
        default:
            print("Opção Inválida!")
        }
    
    
    print("Deseja continuar? ")
    print("[1] Sim")
    print("[2] Não")
    let check1 = readLine()
    let check = Int(check1 ?? "") ?? .zero

    if check == 2 {
        continueLoop = false
    }
    }

    


print("Existem \(listOfPeople.count) pessoas cadastrasdas")
//print("Sendo elas \(listOfStudents.count) estudantes e \(listOfEmployees.count) funcionários")


//var allexia = Person(id: 190002, name: "Allexia", cpf: "11111111111", age: 25, tel: "9111-8412", email: "allexia@email.com")
//
//var raphael = Student(id: 190003, name: "Raphael", cpf: "12345678910", age: 26, tel: "(31)3532-4755", email: "raphael@email.com", mp: 3000, course: .adm, month: .apr)
//
//var jorge = Employee(id: 190004, name: "Jorge", cpf: "98798798798", age: 26, tel: "9.9999-9898", email: "jorge@email.com", role: .lab, pay: 5000)
//
//var alunol = Student(id: 190005, name: "aluno1", cpf: "12345678910", age: 26, tel: "(31)3532-4755", email: "aluno1@email.com", mp: 3000, course: .adm, month: .apr)
//
//var aluno2 = Student(id: 190006, name: "aluno2", cpf: "12345678910", age: 26, tel: "(31)3532-4755", email: "aluno2@email.com", mp: 3000, course: .adm, month: .dec)
//



