// SPDX-License-Identifier: MIT
pragma solidity >0.8.2 <0.9.0;

contract StudentDatabase {
    struct Student {
        uint256 id;
        string name;
        uint256 age;
        string major;
    }
    
    mapping(uint256 => Student) public students;
    uint256 public studentCount;

    event StudentAdded(uint256 id, string name, uint256 age, string major);

    function addStudent(string memory _name, uint256 _age, string memory _major) public {
        studentCount++;
        students[studentCount] = Student(studentCount, _name, _age, _major);
        emit StudentAdded(studentCount, _name, _age, _major);
    }
    
    function getStudent(uint256 _id) public view returns(uint256, string memory, uint256, string memory) {
        require(_id > 0 && _id <= studentCount, "Invalid student ID");
        Student memory student = students[_id];
        return (student.id, student.name, student.age, student.major);
    }
}
