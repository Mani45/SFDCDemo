<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Check</fullName>
        <description>Check</description>
        <protected>false</protected>
        <recipients>
            <recipient>mani@home.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/X5JulyLetterHead</template>
    </alerts>
    <alerts>
        <fullName>Check_it_once</fullName>
        <description>Check it once</description>
        <protected>false</protected>
        <recipients>
            <recipient>mani@home.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/X5JulyLetterHead</template>
    </alerts>
    <rules>
        <fullName>TestWF</fullName>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
