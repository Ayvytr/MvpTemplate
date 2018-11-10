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
                   to="${escapeXmlAttribute(srcOut)}/view/activity/${className}Activity.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainContract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${className}Contract.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${className}Model.${ktOrJavaExt}" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${className}Activity.${ktOrJavaExt}" />

</recipe>
