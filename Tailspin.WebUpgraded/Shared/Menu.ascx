<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IList<ProductCategory>>" %>

<style>
a.menuFeatures 
{	
	color: black;
    font-size: 32px;
}
</style>

<div class="top-menu">
	<ul id="menulist">
        <%foreach (ProductCategory category in Model) { %>
    	    <li id="<%=category.Code%>"><a href="<%=Url.Action("Index","Home",new {slug=category.Code}) %>" title="Browse <%=category.Name%>"><%=category.Name%></a></li>
         <%} %>
		   
    </ul>
	<!--
	<a class="menuFeatures" href="#">FeatureA</a>
	<a class="menuFeatures" href="#">FeatureB</a>
	-->
</div><!--end top-menu-->
