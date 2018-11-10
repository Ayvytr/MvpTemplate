<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />
	
	<#if !(hasDependency('com.ayvytr:mvp-rxlifecycle'))>
        <dependency mavenUrl="com.ayvytr:mvp-rxlifecycle:+"/>
    </#if>

<#if generateLayout>
    <#include "recipe_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainContract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${contractClass}.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${modelClass}.${ktOrJavaExt}" />

				   
    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.${ktOrJavaExt}" />

</recipe>
