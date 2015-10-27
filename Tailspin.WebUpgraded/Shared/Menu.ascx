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
		

		<a class="menuFeatures" href="javascript:telemetria('FeatureA')">FeatureA</a>
		<a class="menuFeatures" href="javascript:telemetria('FeatureB')">FeatureB</a>


		<script>
        function telemetria (nomeEvento) {
			appInsights.trackEvent(nomeEvento);
			alert("obrigado por demonstrar interesse na funcionalidade " + nomeEvento);
			return;
		}
		</script>
		
		
		
<!-- 
To collect end-user usage analytics about your application, 
insert the following script into each page you want to track.
Place this code immediately before the closing </head> tag,
and before any other scripts. Your first data will appear 
automatically in just a few seconds.
-->
<script type="text/javascript">
  var appInsights=window.appInsights||function(config){
    function r(config){t[config]=function(){var i=arguments;t.queue.push(function(){t[config].apply(t,i)})}}var t={config:config},u=document,e=window,o="script",s=u.createElement(o),i,f;for(s.src=config.url||"//az416426.vo.msecnd.net/scripts/a/ai.0.js",u.getElementsByTagName(o)[0].parentNode.appendChild(s),t.cookie=u.cookie,t.queue=[],i=["Event","Exception","Metric","PageView","Trace"];i.length;)r("track"+i.pop());return r("setAuthenticatedUserContext"),r("clearAuthenticatedUserContext"),config.disableExceptionTracking||(i="onerror",r("_"+i),f=e[i],e[i]=function(config,r,u,e,o){var s=f&&f(config,r,u,e,o);return s!==!0&&t["_"+i](config,r,u,e,o),s}),t
    }({
        instrumentationKey:"4fa7d257-e3ba-4822-b17d-01c8eeb5a45b"
    });
       
    window.appInsights=appInsights;
    appInsights.trackPageView();
</script>


	<!--end top-menu-->