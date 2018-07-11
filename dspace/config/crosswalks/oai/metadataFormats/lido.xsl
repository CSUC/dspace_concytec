<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="rdf lido ore dc" version="2.0"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:lido="http://www.lido-schema.org"
                xmlns:ore="http://www.openarchives.org/ore/terms/"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:xalan="http://xml.apache.org/xalan" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:doc="http://www.lyncode.com/xoai">
    <xsl:template match="/">
        <lido:lidoWrap>
            <!-- lido:lido, id: 0 -->
            <lido:lido>
                <!-- lido:lidoRecID, id: 2 -->
                <lido:lidoRecID>
                    <xsl:attribute name="lido:source">
                        <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">
                            <!-- lido:appellationValue, id: 18554 -->
                            <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">

                                <lido:appellationValue>
                                    <xsl:value-of select="."/>
                                </lido:appellationValue>
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:attribute>
                    <xsl:attribute name="lido:type">
                    </xsl:attribute> 
                    <xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='uri']/doc:element[@name='ispartof']/doc:element/doc:field[@name='value']"/>
                </lido:lidoRecID>
                <!-- lido:objectPublishedID, id: 18868 -->
                <!-- <lido:objectPublishedID>
                  <xsl:text/>
                </lido:objectPublishedID>-->
                <!-- lido:descriptiveMetadata, id: 18484 -->
                <lido:descriptiveMetadata>
                    <xsl:attribute name="xml:lang">
                        <xsl:text>ca</xsl:text>
                    </xsl:attribute>
                    <!-- lido:objectClassificationWrap, id: 18486 -->
                    <lido:objectClassificationWrap>
                        <!-- lido:objectWorkTypeWrap, id: 18487 -->
                        <lido:objectWorkTypeWrap>
                            <!-- lido:objectWorkType, id: 18488 -->
                            <lido:objectWorkType>
                                <lido:term>
                                    <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                    IMAGE
                                </lido:term>
                                <!-- lido:term, id: 18497 -->
                                <!--   <xsl:for-each select="../europeana:metadata/europeana:record/dc:type">
                                  <lido:term>
                                    <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                    <xsl:value-of select="."/>
                                  </lido:term>
                                </xsl:for-each>-->
                            </lido:objectWorkType>
                        </lido:objectWorkTypeWrap>
                        <!-- lido:classificationWrap, id: 18503 -->
                        <lido:classificationWrap>
                            <!-- lido:classification, id: 18504 -->
                            <lido:classification>
                                <xsl:attribute name="lido:type">
                                    <xsl:text>europeana:project</xsl:text>
                                </xsl:attribute>
                                <!-- lido:term, id: 18513 -->
                                <!-- <lido:term>
                                  <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                  <xsl:text>Athena Plus</xsl:text>
                                </lido:term>-->
                            </lido:classification>
                            <!-- lido:classification, id: 18519 -->
                            <lido:classification>
                                <xsl:attribute name="lido:type">
                                    <xsl:text>europeana:type</xsl:text>
                                </xsl:attribute>
                                <!-- lido:term, id: 18528 -->
                                <lido:term>
                                    <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                    <xsl:text>IMAGE</xsl:text>
                                </lido:term>
                            </lido:classification>
                        </lido:classificationWrap>
                    </lido:objectClassificationWrap>
                    <!-- lido:objectIdentificationWrap, id: 18549 -->
                    <lido:objectIdentificationWrap>
                        <!-- lido:titleWrap, id: 18550 -->
                        <lido:titleWrap>
                            <!-- lido:titleSet, id: 18551 -->
                            <lido:titleSet>
                                <!-- Check for mandatory elements on lido:appellationValue -->
                                <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">
                                    <!-- lido:appellationValue, id: 18554 -->
                                    <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">

                                        <lido:appellationValue>
                                            <xsl:value-of select="."/>
                                        </lido:appellationValue>
                                    </xsl:for-each>
                                </xsl:if>
                            </lido:titleSet>
                        </lido:titleWrap>
                        <!-- lido:repositoryWrap, id: 18588 -->
                        <lido:repositoryWrap>
                            <!-- lido:repositorySet, id: 18589 -->
                            <lido:repositorySet>
                                <xsl:attribute name="lido:type">
                                    <xsl:text>current</xsl:text>
                                </xsl:attribute>
                            </lido:repositorySet>
                        </lido:repositoryWrap>
                        <!-- lido:objectDescriptionWrap, id: 20356 -->
                        <lido:objectDescriptionWrap>
                            <!-- lido:objectDescriptionSet, id: 20357 -->
                            <lido:objectDescriptionSet>
                                <!-- lido:descriptiveNoteValue, id: 20366 -->
                                <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='description']/doc:element/doc:field[@name='value']">
                                    <lido:descriptiveNoteValue>
                                        <xsl:value-of select="."/>
                                    </lido:descriptiveNoteValue>
                                </xsl:for-each>
                            </lido:objectDescriptionSet>
                        </lido:objectDescriptionWrap>
                    </lido:objectIdentificationWrap>
                    <!-- lido:eventWrap, id: 20421 -->
                    <lido:eventWrap>
                        <!-- lido:eventSet, id: 20422 -->
                        <lido:eventSet>
                            <!-- lido:event, id: 20428 -->
                            <lido:event>
                                <!-- lido:eventType, id: 20435 -->
                                <lido:eventType>
                                    <!-- lido:conceptID, id: 20436 -->
                                    <lido:conceptID>
                                        <xsl:attribute name="lido:type">
                                            <xsl:text>URI</xsl:text>
                                        </xsl:attribute>
                                        <xsl:text>http://terminology.lido-schema.org/lido00007</xsl:text>
                                    </lido:conceptID>
                                </lido:eventType>
                                <!-- lido:eventActor, id: 20471 -->
                                <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='creator']/doc:element/doc:field[@name='value']">
                                    <lido:eventActor>
                                        <!-- lido:actorInRole, id: 20477 -->
                                        <lido:actorInRole>
                                            <!-- lido:actor, id: 20478 -->
                                            <lido:actor>
                                                <!-- lido:nameActorSet, id: 20486 -->
                                                <lido:nameActorSet>
                                                    <!-- Check for mandatory elements on lido:appellationValue -->
                                                    <!-- lido:appellationValue, id: 20487 -->
                                                    <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='creator']/doc:element/doc:field[@name='value']">
                                                        <lido:appellationValue>
                                                            <xsl:value-of select="."/>
                                                        </lido:appellationValue>
                                                    </xsl:for-each>
                                                </lido:nameActorSet>
                                            </lido:actor>
                                        </lido:actorInRole>
                                    </lido:eventActor>
                                </xsl:if>
                                <!-- lido:eventDate, id: 20561 -->
                                <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element/doc:field[@name='value']">
                                    <lido:eventDate>
                                        <!-- lido:displayDate, id: 20562 -->
                                        <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='date']/doc:element/doc:field[@name='value']">
                                            <lido:displayDate>
                                                <xsl:value-of select="."/>
                                            </lido:displayDate>
                                        </xsl:for-each>
                                    </lido:eventDate>
                                </xsl:if>
                                <!-- lido:eventPlace, id: 20592 -->
                                <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element/doc:element/doc:field[@name='value']">
                                    <lido:eventPlace>
                                        <!-- lido:displayPlace, id: 20595 -->
                                        <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='coverage']/doc:element/doc:element/doc:field[@name='value']">
                                            <lido:displayPlace>
                                                <xsl:value-of select="."/>
                                            </lido:displayPlace>
                                        </xsl:for-each>
                                    </lido:eventPlace>
                                </xsl:if>
                                <!-- lido:eventMaterialsTech, id: 21371 -->
                                <lido:eventMaterialsTech>
                                    <!-- lido:materialsTech, id: 21377 -->
                                    <lido:materialsTech>
                                        <!-- lido:termMaterialsTech, id: 21378 -->
                                        <lido:termMaterialsTech>
                                            <xsl:attribute name="lido:type">
                                                <xsl:text>technique</xsl:text>
                                            </xsl:attribute>
                                        </lido:termMaterialsTech>
                                        <!-- lido:termMaterialsTech, id: 21393 -->
                                        <lido:termMaterialsTech>
                                            <xsl:attribute name="lido:type">
                                                <xsl:text>material</xsl:text>
                                            </xsl:attribute>
                                        </lido:termMaterialsTech>
                                    </lido:materialsTech>
                                </lido:eventMaterialsTech>
                            </lido:event>
                        </lido:eventSet>
                    </lido:eventWrap>
                    <!-- lido:objectRelationWrap, id: 22532 -->
                    <lido:objectRelationWrap>
                        <!-- lido:subjectWrap, id: 22533 -->
                        <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='subject']/doc:element/doc:element">  
                            <lido:subjectWrap>
                                <!-- lido:subjectSet, id: 22534 -->
                                <lido:subjectSet>
                                    <!-- lido:subject, id: 22540 -->
                                    <lido:subject>
                                        <!-- lido:subjectConcept, id: 22546 -->
                                        <lido:subjectConcept>
                                            <!-- lido:term, id: 22554 -->
                                            <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='subject']/doc:element/doc:element">
                                                <lido:term>
                                                    <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                                    <xsl:value-of select="."/>
                                                </lido:term>
                                            </xsl:for-each>
                                        </lido:subjectConcept>
                                    </lido:subject>
                                </lido:subjectSet>
                            </lido:subjectWrap>
                        </xsl:if>
                    </lido:objectRelationWrap>
                </lido:descriptiveMetadata>
                <!-- lido:administrativeMetadata, id: 3975 -->
                <lido:administrativeMetadata>
                    <xsl:attribute name="xml:lang">
                        <xsl:text>hu</xsl:text>
                    </xsl:attribute>
                    <!-- lido:recordWrap, id: 4032 -->
                    <lido:recordWrap>
                        <!-- Check for mandatory elements on lido:recordID -->
                        <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element/doc:element/doc:field[@name='value']">
                            <!-- lido:recordID, id: 4033 -->
                            <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element/doc:element/doc:field[@name='value']">
                                <lido:recordID>
                                    <xsl:attribute name="lido:type">
                                        <xsl:text>internal</xsl:text>
                                    </xsl:attribute>
                                    <xsl:value-of select="."/>
                                </lido:recordID>
                            </xsl:for-each>
                        </xsl:if>
                        <!-- lido:recordType, id: 4039 -->
                        <lido:recordType>
                            <!-- lido:term, id: 4046 -->
                            <lido:term>
                                <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                <xsl:text>item</xsl:text>
                            </lido:term>
                        </lido:recordType>
                        <!-- lido:recordSource, id: 4377 -->

                            <lido:recordSource>
                                <xsl:attribute name="lido:type">
                                    <xsl:text>europeana:dataProvider</xsl:text>
                                </xsl:attribute>
                                <!-- lido:legalBodyName, id: 4386 -->
                                <lido:legalBodyName>
                                    <!-- Check for mandatory elements on lido:appellationValue -->
                                    <!-- lido:appellationValue, id: 4387 -->
                                    <lido:appellationValue>Concytec</lido:appellationValue>
                                </lido:legalBodyName>
                            </lido:recordSource>
              
                        <!-- lido:recordSource, id: 4052 -->
                        <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='publisher']/doc:element/doc:field[@name='value']">

                            <lido:recordSource>
                                <!-- lido:legalBodyName, id: 4061 -->
                                <lido:legalBodyName>
                                    <!-- Check for mandatory elements on lido:appellationValue -->
                                    <!-- lido:appellationValue, id: 4062 -->
                                    <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='publisher']/doc:element/doc:field[@name='value']">
                                        <lido:appellationValue>
                                            <xsl:value-of select="."/>
                                        </lido:appellationValue>
                                    </xsl:for-each>
                               
                                </lido:legalBodyName>
                            </lido:recordSource>
                        </xsl:if>
                        <!-- lido:recordRights, id: 4616 -->
                      <!--  <lido:recordRights>
                            <lido:rightsHolder>
                                <lido:legalBodyID lido:type="URI" >
                                    <xsl:attribute name="lido:source">
                                        <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">
                                           <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='title']/doc:element/doc:field[@name='value']">                                        
                                                <xsl:value-of select="."/>
                                 
                                            </xsl:for-each>
                                        </xsl:if>
                                    </xsl:attribute>
                                        <xsl:value-of select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']"/>
                                </lido:legalBodyID>
                                <lido:legalBodyName>
                                    <lido:appellationValue>CALAIX</lido:appellationValue>
                                </lido:legalBodyName>
                                <lido:legalBodyWeblink>http://www.calaix.cat</lido:legalBodyWeblink>
                            </lido:rightsHolder>
                        </lido:recordRights>-->
                        <!-- lido:recordInfoSet, id: 4131 -->
                        <lido:recordInfoSet>
                            <!-- Check for mandatory elements on lido:recordInfoLink -->
                            <xsl:if test="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']">
                                <!-- lido:recordInfoLink, id: 4139 -->
                                <xsl:for-each select="doc:metadata/doc:element[@name='dc']/doc:element[@name='identifier']/doc:element[@name='uri']/doc:element/doc:field[@name='value']">
                                    <lido:recordInfoLink>
                                        <xsl:value-of select="."/>
                                    </lido:recordInfoLink>
                                </xsl:for-each>
                            </xsl:if>
                        </lido:recordInfoSet>
                    </lido:recordWrap>
                    <!-- lido:resourceWrap, id: 4151 -->
                    <lido:resourceWrap>
                        <!-- lido:resourceSet, id: 4402 -->
                        <lido:resourceSet>
                            <!-- lido:resourceRepresentation, id: 4594 -->
                            <xsl:if test="doc:metadata/doc:element[@name='bundles']/doc:element/doc:field[text()='THUMBNAIL']"> 
                                <lido:resourceRepresentation>
                                    <xsl:attribute name="lido:type">
                                        <xsl:text>image_thumb</xsl:text>
                                    </xsl:attribute>
                                    <!-- Check for mandatory elements on lido:linkResource -->
                                    <!-- lido:linkResource, id: 4596 -->
                                    <xsl:for-each select="doc:metadata/doc:element[@name='bundles']/doc:element/doc:field[text()='THUMBNAIL']">
                                        <xsl:for-each select="../doc:element[@name='bitstreams']/doc:element">
                                            <xsl:if test="position() = 1">
                                                <lido:linkResource>
                                                    <xsl:value-of select="doc:field[@name='url']/text()"></xsl:value-of>
                                                </lido:linkResource>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </lido:resourceRepresentation>
                            </xsl:if>
                            <!-- lido:resourceRepresentation, id: 4572 -->
                            <xsl:if test="doc:metadata/doc:element[@name='bundles']/doc:element/doc:field[text()='CONTENT' or text()='ORIGINAL']">
                                <lido:resourceRepresentation>
                                    <xsl:attribute name="lido:type">
                                        <xsl:text>image_master</xsl:text>
                                    </xsl:attribute>
                                    <!-- Check for mandatory elements on lido:linkResource -->
                                    <!-- lido:linkResource, id: 4596 -->
                                    <xsl:for-each select="doc:metadata/doc:element[@name='bundles']/doc:element/doc:field[text()='CONTENT' or text()='ORIGINAL']">
                                        <xsl:for-each select="../doc:element[@name='bitstreams']/doc:element">
                                            <xsl:if test="position() = 1">
                                                <lido:linkResource>
                                                    <xsl:value-of select="doc:field[@name='url']/text()"></xsl:value-of>
                                                </lido:linkResource>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </xsl:for-each>
                                </lido:resourceRepresentation>
                            </xsl:if>
                            <!-- lido:rightsResource, id: 4518 -->
                            <lido:rightsResource>
                                <!-- lido:rightsType, id: 4520 -->
                                <lido:rightsType>
                                    <!-- lido:term, id: 4527 -->
                                    <lido:term>
                                        <xsl:attribute name="lido:pref">
                                            <xsl:text>preferred</xsl:text>
                                        </xsl:attribute>
                                        <xsl:attribute name="lido:addedSearchTerm">no</xsl:attribute>
                                        <xsl:text>http://creativecommons.org/licenses/by-nc-nd/3.0/es/</xsl:text>
                                    </lido:term>
                                </lido:rightsType>
                            </lido:rightsResource>
                        </lido:resourceSet>
                    </lido:resourceWrap>
                </lido:administrativeMetadata>
            </lido:lido>
        </lido:lidoWrap>
    </xsl:template>
</xsl:stylesheet>
