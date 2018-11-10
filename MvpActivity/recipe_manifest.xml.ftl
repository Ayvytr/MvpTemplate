<recipe>

    <#if requireTheme!false>
    <#include "../common/recipe_theme.xml.ftl" />
    </#if>

    <#include "../common/recipe_manifest_strings.xml.ftl" />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</recipe>
