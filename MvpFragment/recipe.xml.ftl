<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

	<#if !(hasDependency('com.ayvytr:mvp-rxlifecycle'))>
        <dependency mavenUrl="com.ayvytr:mvp-rxlifecycle:1.2.6"/>
    </#if>

    <#if generateLayout>
        <instantiate from="root://activities/MvpActivity/root/res/layout/layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    </#if>

    <instantiate from="root://activities/MvpActivity/root/src/app_package/MainFragment.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/fragment/${className}Fragment.${ktOrJavaExt}" />
				   
	<instantiate from="root://activities/MvpActivity/root/src/app_package/MainPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.${ktOrJavaExt}" />
				   
	<instantiate from="root://activities/MvpActivity/root/src/app_package/MainContract.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/contract/${className}Contract.${ktOrJavaExt}" />
				   
	<instantiate from="root://activities/MvpActivity/root/src/app_package/MainModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${className}Model.${ktOrJavaExt}" />

    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${className}Fragment.${ktOrJavaExt}" />
</recipe>
