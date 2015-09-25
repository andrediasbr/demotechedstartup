<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IList<ProductCategory>>" %>

	<style>
		a.menuFeatures {
			color: black;
			font-size: 32px;
		}
	</style>

	<div class="top-menu">
		<ul id="menulist">
			<%foreach (ProductCategory category in Model) { %>
				<li id="<%=category.Code%>">
					<a href="<%=Url.Action(" Index ","Home ",new {slug=category.Code}) %>" title="Browse <%=category.Name%>">
						<%=category.Name%>
					</a>
				</li>
				<%} %>

		</ul>

		<a class="menuFeatures" href="telemetria('FeatureA')">FeatureA</a>
		<a class="menuFeatures" href="telemetria('FeatureB')">FeatureB</a>

		<script>
        function telemetria (nomeEvento) {
			appInsights.trackEvent(nomeEvento);
			alert("obrigado por demonstrar interesse na funcionalidade " + nomeEvento);
		}
		</script>


	</div>
	<!--end top-menu-->