<?xml version="1.0"?>
<recipe>

    <instantiate from="res/layout/item_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="src/app_package/CustomAdapter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/adapters/${adapterClass}.java"/>
    <open file="${escapeXmlAttribute(srcOut)}/adapters/${adapterClass}.java"/>


</recipe>
