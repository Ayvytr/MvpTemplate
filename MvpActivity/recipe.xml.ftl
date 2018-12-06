<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />
	
	<#if !(hasDependency('com.ayvytr:mvp-rxlifecycle'))>
        <dependency mavenUrl="com.ayvytr:mvp-rxlifecycle:1.2.6"/>
    </#if>

<#if generateLayout>
	<instantiate from="root/res/layout/layout.xml.ftl"
				 to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
</#if>

    <instantiate from="root/src/app_package/MainActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/activity/${className}Activity.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainContract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${className}Contract.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/MainModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${className}Model.${ktOrJavaExt}" />
				   
    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${className}Activity.${ktOrJavaExt}" />

</recipe>
