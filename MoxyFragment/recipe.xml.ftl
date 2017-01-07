<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:19.+"/></#if>

    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/fragments/${subpackage}${className}.java" />

    <instantiate from="src/app_package/ui/fragment/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragments/${subpackage}${className}.java" />

    <#if includeView>
    <instantiate from="src/app_package/presentation/view/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/interfaces/views/${subpackage}${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/interfaces/views/${subpackage}${viewName}.java" />
    </#if>

    <#if includePresenter>
    <instantiate from="src/app_package/presentation/presenter/BlankPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenters/${subpackage}${presenterName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presenters/${subpackage}${presenterName}.java" />
    </#if>
                                      
</recipe>
