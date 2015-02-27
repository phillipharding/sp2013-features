<%@ Control Language="C#"   %>
<%@Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Assembly Name="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register TagPrefix="CMS" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" namespace="Microsoft.SharePoint.Publishing.WebControls"%>
<%@ Import Namespace="System.Collections" %>
<%@ Import Namespace="System.Collections.Specialized" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Collections.ObjectModel" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Import Namespace="Microsoft.SharePoint.Utilities" %>
<%@ Import Namespace="Microsoft.SharePoint.WebControls" %>
<%@ Import Namespace="Microsoft.SharePoint.Publishing" %>
<script runat="server">
		private const string QualityValuePrefix = ";q=";
		private enum PropertiesOnLabelToUse
		{
			Language,
			Locale
		}
		private enum MatchingPreference
		{
			ImpreciseOrderFirst,
			PreciseMatch
		}
		private PropertiesOnLabelToUse PropertyOnLabelToUse
		{
			get { return this.propertyOnLabelToUse; }
			set { this.propertyOnLabelToUse = value; }
		}
		private PropertiesOnLabelToUse propertyOnLabelToUse = PropertiesOnLabelToUse.Locale;
		private MatchingPreference PreferenceOrder
		{
			get { return this.preferenceOrder; }
			set { this.preferenceOrder = value; }
		}
		private MatchingPreference preferenceOrder = MatchingPreference.ImpreciseOrderFirst;
		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);
			string targetUrl = this.GetRedirectTargetUrl();
			if (!string.IsNullOrEmpty(targetUrl))
			{
				SPUtility.Redirect(targetUrl, SPRedirectFlags.Trusted, Context);
			}
		}
		private string GetRedirectTargetUrl()
		{
			ReadOnlyCollection<VariationLabel> spawnedLabels = Variations.Current.UserAccessibleLabels;
			if (spawnedLabels.Count > 0)
			{
				string[] browserPrefLanguages = Page.Request.UserLanguages;
				Dictionary<string, string> cultureCodeToUrlMapping = new Dictionary<string, string>();
				string sourceLabelUrl = string.Empty;
				foreach (VariationLabel label in spawnedLabels)
				{
					if (label.IsSource)
					{
						sourceLabelUrl = label.TopWebUrl;
					}
					CultureInfo labelCultureInfo = this.GetLabelCultureInfo(label);
					string labelCultureInfoName = labelCultureInfo.Name.ToUpperInvariant();
					if (!cultureCodeToUrlMapping.ContainsKey(labelCultureInfoName))
					{
						cultureCodeToUrlMapping.Add(labelCultureInfoName, label.TopWebUrl);
					}
				}
				string bestMatchLanguage = string.Empty;
				bool languageInformationFound = false;
				if ((browserPrefLanguages != null) && (cultureCodeToUrlMapping.Count > 0) )
				{
					if (SPLanguageSettings.TryDetermineLanguage(cultureCodeToUrlMapping.Keys.ToArray(), browserPrefLanguages, LanguageDecisionOptions.NoFuzzyMatching, out bestMatchLanguage))
					{
						languageInformationFound = true;
					}
				}
				if (languageInformationFound)
				{
					return (string.IsNullOrEmpty(bestMatchLanguage) ? sourceLabelUrl : cultureCodeToUrlMapping[bestMatchLanguage.ToUpperInvariant()]);
				}
				else
				{
					return sourceLabelUrl;
				}
			}
			return null;
		}
		private CultureInfo GetLabelCultureInfo(VariationLabel label)
		{
			if (PropertiesOnLabelToUse.Locale == this.propertyOnLabelToUse)
			{
				return new CultureInfo(Convert.ToInt32(label.Locale, CultureInfo.InvariantCulture));
			}
			else
			{
				return new CultureInfo(label.Language);
			}
		}
</script>
<!--
	The following control renders runtime fallback logic when the logic above cannot determine proper Variation sub Site to redirect to.
	If the control is removed, it will affect the runtime fallback behavior of the Variation Root redirect.
-->
<cms:VariationsRootLandingRunTime id="VariationsRootLandingRunTime" runat="server"/>
<!--
	The following control renders UI for SharePointDesigner. If the control is removed,
	it will affect SharePointDesigner design time experience.
-->
<cms:VariationsRootLandingDesignTime id="VariationsRootLandingDesignTime" runat="server"/>
