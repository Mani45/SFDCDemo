<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Contact_link</fullName>
        <description>Send Contact link</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/TTE</template>
    </alerts>
    <rules>
        <fullName>Sending Contact Link</fullName>
        <actions>
            <name>Send_Contact_link</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Email )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
