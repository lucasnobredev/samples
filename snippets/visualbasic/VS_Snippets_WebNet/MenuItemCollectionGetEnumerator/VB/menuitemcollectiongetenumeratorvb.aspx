<!-- <Snippet1> -->

<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    
  Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    ' Display the submenu items of the Music
    ' menu item. 

    ' Retrieve the Music menu item.
    Dim musicMenuItem As MenuItem = NavigationMenu.FindItem("Home\Music")

    ' Use the GetEnumerator method to create an enumerator 
    ' that contains the submenu items of the Music menu item.
    Dim menuItemEnumerator As IEnumerator = musicMenuItem.ChildItems.GetEnumerator()

    Message.Text = "The submenu items of the Music menu item are: <br/><br/>"

    ' Iterate though the enumerator to display the menu items.
    While menuItemEnumerator.MoveNext()

      Message.Text &= (CType(menuItemEnumerator.Current, MenuItem)).Text & "<br />"

    End While

  End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>MenuItemCollection GetEnumerator Example</title>
</head>
<body>
    <form id="form1" runat="server">
    
      <h3>MenuItemCollection GetEnumerator Example</h3>
    
      <asp:menu id="NavigationMenu"
        orientation="Vertical"
        target="_blank" 
        runat="server">
        
        <items>
          <asp:menuitem text="Home"
            tooltip="Home">
            <asp:menuitem text="Music"
              tooltip="Music">
              <asp:menuitem text="Classical"
                tooltip="Classical"/>
              <asp:menuitem text="Rock"
                tooltip="Rock"/>
              <asp:menuitem text="Jazz"
                tooltip="Jazz"/>
            </asp:menuitem>
            <asp:menuitem text="Movies"
              tooltip="Movies">
              <asp:menuitem text="Action"
                tooltip="Action"/>
              <asp:menuitem text="Drama"
                tooltip="Drama"/>
              <asp:menuitem text="Musical"
                tooltip="Musical"/>
            </asp:menuitem>
          </asp:menuitem>
        </items>

      </asp:menu>
      
      <hr/>

      <asp:label id="Message" 
        runat="server"/>

    </form>
  </body>
</html>

<!-- </Snippet1> -->
