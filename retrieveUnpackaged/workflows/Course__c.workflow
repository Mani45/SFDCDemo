<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>course_fee_approval</fullName>
        <description>course fee approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>mani@home.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/coursefee</template>
    </alerts>
    <alerts>
        <fullName>coursefee</fullName>
        <description>coursefee</description>
        <protected>false</protected>
        <recipients>
            <recipient>mani@home.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/coursefee</template>
    </alerts>
</Workflow>
