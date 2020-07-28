pragma solidity ^0.4.17 <0.7.0;

contract ReportCard {
    string public name;
    uint  public rollno;
    string public batch;
    uint public Marks1;
    uint public Marks2;
    uint public Marks3;
    uint public Marks4;
    string  public status;




function Card(string newStudent, uint newrollno, string newbatch, uint newMarks1,uint newMarks2,uint newMarks3,uint newMarks4) public{  // constructor 
    name= newStudent;
    rollno=newrollno;
    batch=newbatch;
    Marks1=newMarks1;
    Marks2=newMarks2;
    Marks3=newMarks3;
    Marks4=newMarks4;
     uint result = newMarks1+newMarks2+newMarks3+newMarks4;   // Adding the total
         
    
        if(result < 100){
            status = "Fail";
        }
        else {
            status = "Pass";
        }
   
    }
    

function getCurrentDetails() public view returns(string , uint , string , string ){   // Getting current Details
    return(name,rollno,batch,status);
   
    }
    

    
}


// https://ropsten.etherscan.io/address/0x55bce440330f18955167f5addea441c687b892aa
