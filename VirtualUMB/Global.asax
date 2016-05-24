<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">
    void Application_Start(object sender, EventArgs e) 
    {
        RegisterRoutes(RouteTable.Routes);
    }
    
    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("BrowseDesigns", "", "~/BrowseDesigns.aspx");
        routes.MapPageRoute("ViewModel", "{Model}", "~/ViewModel.aspx");
        routes.MapPageRoute("ViewMyDesign", "", "~/ViewMyDesign.aspx");
        
    }
</script>
