<#import "../../common/shared_manifest_macros.ftl" as manifestMacros>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <application>
        <activity android:name="${packageName}.view.activity.${className}Activity"
            <#if generateActivityTitle!true>
                <#if isNewProject>
                    android:label="@string/app_name"
                </#if>
            </#if>
            <#if hasNoActionBar>
                android:theme="@style/${themeNameNoActionBar}"
            <#elseif (requireTheme!false) && !hasApplicationTheme && appCompat>
                android:theme="@style/${themeName}"
            </#if>
            <#if buildApi gte 16 && parentActivityClass != "">
                android:parentActivityName="${parentActivityClass}"
            </#if>>
            <#if parentActivityClass != "">
                <meta-data android:name="android.support.PARENT_ACTIVITY"
                    android:value="${parentActivityClass}" />
            </#if>
            <@manifestMacros.commonActivityBody />
        </activity>
    </application>
</manifest>
