Public Class VisualForceComponentController{
Public string AssignedToField{get;set;}
    Public VisualForceComponentController(){
    }

    Public string getInputstringReceived(){
       return AssignedToField;   
    }
}