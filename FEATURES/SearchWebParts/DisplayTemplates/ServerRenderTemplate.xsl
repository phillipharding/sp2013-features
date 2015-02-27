<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
	<xsl:param name='ItemTemplateId'/>
	<xsl:param name='RenderTemplateId' />
	<xsl:param name='LayoutsVersionURL' />
	<xsl:param name='SlotMappingStartIndex' />
	<xsl:variable name='LayoutsImageURL' select='concat($LayoutsVersionURL, "images/")' />
	<xsl:template match='/'>
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match='ResultTable'>
		<p>
			<xsl:apply-templates select='Rows'/>
		</p>
	</xsl:template>

	<xsl:template match='Rows'>
		<table>
			<xsl:choose>
				<!-- OOB CBS template -->
				<xsl:when test='$ItemTemplateId="Item_Picture3Lines" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_Picture3Lines.js" or
						  $ItemTemplateId="Item_LargePicture" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_LargePicture.js" or
						  $ItemTemplateId="Item_PictureOnTop" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTop.js" or
						  $ItemTemplateId="Item_RecommendationsClickLogging" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_RecommendationsClickLogging.js" or
						  $ItemTemplateId="Item_TopReport" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_TopReport.js" or
						  $ItemTemplateId="Item_Video_CompactHorizontal" or
						  $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_Video_CompactHorizontal.js" or
						  $ItemTemplateId="Item_TwoLines" or
                          $ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_TwoLines.js"'>
					<xsl:apply-templates select='Row'>
						<xsl:with-param name='excludedColumns' select='";Line 1;Link URL;Path;Title;"' />
						<xsl:with-param name='renderIconLink' select='true()' />
						<xsl:with-param name='renderTitleLink' select='true()' />
						<xsl:with-param name='colStartIndex' select='$SlotMappingStartIndex' />
					</xsl:apply-templates>
				</xsl:when>
				<!-- OOB search template -->
				<xsl:when test='$RenderTemplateId="Control_SearchResults" or
                          $RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_SearchResults.js" or
                          $ItemTemplateId="Generic" or
                          $ItemTemplateId=""'>
					<xsl:apply-templates select='Row'>
						<xsl:with-param name='excludedColumns' select='";WorkId;Rank;Size;Path;Title;FileExtension;CollapsingStatus;HitHighlightedProperties;ContentClass;IsDocument;PictureThumbnailURL;ServerRedirectedURL;ContentTypeId;"' />
						<xsl:with-param name='renderIconLink' select='true()' />
						<xsl:with-param name='renderTitleLink' select='true()' />
						<xsl:with-param name='colStartIndex' select='0' />
					</xsl:apply-templates>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select='Row'>
						<xsl:with-param name='excludedColumns' />
						<xsl:with-param name='renderIconLink' select='false()' />
						<xsl:with-param name='renderTitleLink' select='true()' />
						<xsl:with-param name='colStartIndex' select='$SlotMappingStartIndex' />
					</xsl:apply-templates>
				</xsl:otherwise>
			</xsl:choose>
		</table>
	</xsl:template>

	<!-- helper template to test columns names emitted
	<xsl:template match='Row' mode='Headers'>
		<tr>
			<xsl:for-each select='child::*'>
				<th>
					<xsl:value-of select='name(.)'/>
				</th>
			</xsl:for-each>
		</tr>
	</xsl:template> -->

	<xsl:template match='Row'>
		<xsl:param name='excludedColumns' />
		<xsl:param name='renderTitleLink' />
		<xsl:param name='renderIconLink' />
		<xsl:param name='colStartIndex' />
		<tr>
			<xsl:variable name='path' select='Path'/>

			<!-- title -->
			<xsl:if test='$renderTitleLink'>
				<td>
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='$path'/>
						</xsl:attribute>
						<xsl:value-of select='Title'/>
					</a>
				</td>
			</xsl:if>

			<!-- display rest of the fields that's not excluded -->
			<xsl:for-each select='*'>
				<xsl:if test='position() > $colStartIndex and not(contains($excludedColumns, concat(";", name(.), ";")))'>
					<td>
						<xsl:choose>
							<xsl:when test='name(.) = "Picture URL" or name(.) = "Image Url"'>
								<!-- icon -->
								<xsl:if test='$renderIconLink'>

									<xsl:variable name='pictureURL' select='.' />
									<xsl:variable name='iconURL'>
										<xsl:choose>
											<xsl:when test='$pictureURL != ""'>
												<xsl:value-of select='$pictureURL' disable-output-escaping="yes"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:variable name='fileExt'>
													<xsl:call-template name='GetIconUrlByFileExtension'>
														<xsl:with-param name='fileExtension' select='FileExtension' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='concat($LayoutsImageURL, normalize-space($fileExt))'/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
											<a>
												<xsl:attribute name='href'>
													<xsl:value-of select='$path'/>
												</xsl:attribute>
									<xsl:choose>
										<xsl:when test='starts-with($pictureURL, "&lt;img")'>
											<xsl:value-of select='$pictureURL' disable-output-escaping="yes"/>
										</xsl:when>
										<xsl:otherwise>
												<img class='cbs-Icon'>
													<xsl:attribute name='src'>
														<xsl:value-of select='$iconURL'/>
													</xsl:attribute>
												</img>
										</xsl:otherwise>
									</xsl:choose>
											</a>
								</xsl:if>
							</xsl:when>
							<xsl:when test='name(.) = "HitHighlightedSummary"'>
								<xsl:value-of select='.' disable-output-escaping="yes" />
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select='.' />
							</xsl:otherwise>
						</xsl:choose>
					</td>
				</xsl:if>
			</xsl:for-each>
		</tr>
	</xsl:template>

	<!-- helper -->
	<!-- choose an icon based on current result file type -->
	<xsl:template name='GetIconUrlByFileExtension'>
		<xsl:param name='fileExtension' />
		<xsl:variable name='extension'>
			<xsl:call-template name='GetFriendlyNameForFileExtension'>
				<xsl:with-param name='fileExtension' select='$fileExtension'/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name='friendlyName' select='normalize-space($extension)'/>
		<xsl:choose>
			<xsl:when test='$friendlyName="Microsoft Word"'>
				icdoc.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft PowerPoint"'>
				icppt.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft Excel"'>
				icxls.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft OneNote"'>
				icone.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft Visio"'>
				icvisiogeneric.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft InfoPath"'>
				icinfopathgeneric.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft Access"'>
				icaccdb.png
			</xsl:when>
			<xsl:when test='$friendlyName="Microsoft Publisher"'>
				icpub.png
			</xsl:when>
			<xsl:otherwise>
				html16.png
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name='GetFriendlyNameForFileExtension'>
		<xsl:param name='fileExtension'/>
		<xsl:choose>
			<xsl:when test='$fileExtension="css"'>
				CSS File
			</xsl:when>
			<xsl:when test='$fileExtension="hlp"'>
				Help File
			</xsl:when>
			<xsl:when test='$fileExtension="msi" or $fileExtension="msp"'>
				Installer File
			</xsl:when>
			<xsl:when test='$fileExtension="js" or $fileExtension="jse"'>
				JavaScript
			</xsl:when>
			<xsl:when test='$fileExtension="log"'>
				Log File
			</xsl:when>
			<xsl:when test='$fileExtension="eml" or $fileExtension="msg"'>
				Mail
			</xsl:when>
			<xsl:when test='$fileExtension = "accdb" or $fileExtension = "accdt" or $fileExtension = "accdc" or $fileExtension = "accde" or $fileExtension = "accdr"'>
				Microsoft Access
			</xsl:when>
			<xsl:when test='$fileExtension = "odc" 
                or $fileExtension = "xls" 
                or $fileExtension = "xlsb" 
                or $fileExtension = "xlsm" 
                or $fileExtension = "xlsx" 
                or $fileExtension = "xlt"
                or $fileExtension = "xltb"
                or $fileExtension = "xltm"
                or $fileExtension = "xltx"'>
				Microsoft Excel
			</xsl:when>
			<xsl:when test='$fileExtension = "xsn"'>
				Microsoft InfoPath
			</xsl:when>
			<xsl:when test='$fileExtension = "one"
                or $fileExtension = "onepkg"
                or $fileExtension = "onetoc2"'>
				Microsoft OneNote
			</xsl:when>
			<xsl:when test='$fileExtension = "pot"
                or $fileExtension = "potm"
                or $fileExtension = "potx"
                or $fileExtension = "pps"
                or $fileExtension = "ppsm"
                or $fileExtension = "ppsx"
                or $fileExtension = "ppt"
                or $fileExtension = "pptm"
                or $fileExtension = "pptx"'>
				Microsoft PowerPoint
			</xsl:when>
			<xsl:when test='$fileExtension = "mpp"
                or $fileExtension = "mpt"'>
				Microsoft Project
			</xsl:when>
			<xsl:when test='$fileExtension = "pub"'>
				Microsoft Publisher
			</xsl:when>
			<xsl:when test='$fileExtension = "ascx"
                or $fileExtension = "master"'>
				Microsoft SharePoint Designer
			</xsl:when>
			<xsl:when test='$fileExtension = "vdw"
                or $fileExtension = "vdx"
                or $fileExtension = "vsd"
                or $fileExtension = "vsl"
                or $fileExtension = "vss"
                or $fileExtension = "vst"
                or $fileExtension = "vsu"
                or $fileExtension = "vsw"
                or $fileExtension = "vsx"
                or $fileExtension = "vtx"'>
				Microsoft Visio
			</xsl:when>
			<xsl:when test='$fileExtension = "doc"
                or $fileExtension = "docm"
                or $fileExtension = "docx"
                or $fileExtension = "dot"
                or $fileExtension = "dotm"
                or $fileExtension = "dotx"
                or $fileExtension = "mht"
                or $fileExtension = "mhtml"'>
				Microsoft Word
			</xsl:when>
			<xsl:when test='$fileExtension = "xps"'>
				Microsoft XPS
			</xsl:when>
			<xsl:when test='$fileExtension = "wm"
                or $fileExtension = "wma"
                or $fileExtension = "wmd"
                or $fileExtension = "wmp"
                or $fileExtension = "wms"
                or $fileExtension = "wmv"
                or $fileExtension = "wmx"
                or $fileExtension = "wmz"'>
				Music / Audio
			</xsl:when>
			<xsl:when test='$fileExtension = "rtf"'>
				Rich Text File
			</xsl:when>
			<xsl:when test='$fileExtension = "txt"'>
				Text File
			</xsl:when>
			<xsl:when test='$fileExtension = "ascx"
                or $fileExtension = "asp"
                or $fileExtension = "aspx"
                or $fileExtension = "htm"
                or $fileExtension = "html"
                or $fileExtension = "jhtml"
                or $fileExtension = "js"
                or $fileExtension = "mht"
                or $fileExtension = "mhtml"
                or $fileExtension = "mspx"
                or $fileExtension = "php"'>
				Web Page
			</xsl:when>
			<xsl:when test='$fileExtension = "xml"'>
				XML File
			</xsl:when>
			<xsl:when test='$fileExtension = "xsl"
                or $fileExtension = "xslt"'>
				XSL Transform File
			</xsl:when>
			<xsl:when test='$fileExtension = "zip"'>
				Zip Compressed File
			</xsl:when>
			<xsl:otherwise>
				Document
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
