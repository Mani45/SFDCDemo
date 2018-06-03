<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>FieldUpdate</fullName>
        <field>Lprice__c</field>
        <formula>mearcahndize__r.Price__c</formula>
        <name>FieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Inventory_update</fullName>
        <field>inventory__c</field>
        <formula>IF(ISNEW() ,  mearcahndize__r.inventory__c - quantity__c ,               
                mearcahndize__r.inventory__c -(quantity__c-                     
                PRIORVALUE(quantity__c) ) )</formula>
        <name>Inventory update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>mearcahndize__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>QuantityUpadate</fullName>
        <field>inventory__c</field>
        <formula>IF( ISNEW() , 
                     mearcahndize__r.inventory__c  -  quantity__c , 
                                    mearcahndize__r.inventory__c  - ( quantity__c  -  PRIORVALUE
(quantity__c ))
     )</formula>
        <name>QuantityUpadate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>mearcahndize__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Inventory update</fullName>
        <actions>
            <name>Inventory_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PriceUpdate</fullName>
        <actions>
            <name>FieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>QuantityUpadate</fullName>
        <actions>
            <name>QuantityUpadate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 or 2 or 3 or 4</booleanFilter>
        <criteriaItems>
            <field>Mer__c.Name</field>
            <operation>equals</operation>
            <value>utrogestan</value>
        </criteriaItems>
        <criteriaItems>
            <field>Mer__c.Price__c</field>
            <operation>greaterThan</operation>
            <value>20000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Mer__c.Name</field>
            <operation>equals</operation>
            <value>citrogen</value>
        </criteriaItems>
        <criteriaItems>
            <field>Mer__c.Name</field>
            <operation>equals</operation>
            <value>dolopor</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
