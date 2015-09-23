<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IList<ProductCategory>>" %>

<div class="top-menu">
	<ul id="menulist">
        <%foreach (ProductCategory category in Model) { %>
    	    <li id="<%=category.Code%>"><a href="<%=Url.Action("Index","Home",new {slug=category.Code}) %>" title="Browse <%=category.Name%>"><%=category.Name%></a></li>
         <%} %>
		 <li id="featureA"><a href="#" title="">Feature A</a></li>
		 <li id="featureB"><a href="#" title="">Feature B</a></li>
    </ul>
	
</div><!--end top-menu-->
