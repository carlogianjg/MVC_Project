   M S B A M L   `   `   `  ����F  BMVC_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MVCDemo.Views.PagesMVCDemo.Views.Pages  5      %    MVCDemo.Views.Pages.ContactPage   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MVCDemo.Views.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  ContactPage��5
      .��5      � 
�������$��3q�6    � RowDefinitions 5   
   �� 5      $��35 �6   �� 5      $��* �6   �� 5      $��10 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��3,0,10,0q�6.   .+�5      �� -   5         ��Name$ btnNew��5       +  'MaterialDesignRaisedSecondaryDarkButton#��[  6;   ��5      �� 5      $ 
Horizontal=�6!   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$	 Add=�62   $��0 5 0 0q�6=   �� 5      $	��NEW��6      MaterialDesignLabel#��[ 6.   
�������6[   5      5      �� 5      -   5        $ btnEdit��5      $��3 0 0 0q�6;   #��[  6L   ��5      �� 5      $ 
Horizontal=�6!   .+�5        $
 Edit=�62   $��0 5 0 0q�6>   �� 5       $
��EDIT��6    #��[ 6/   
�������6\   5!      5#      �� 5%      -   5        $ 	btnDelete��5%      $��3 0 0 0q�6=   #��[  6N   ��5&      �� 5'      $ 
Horizontal=�6!   .+�5(        $ Delete=�62   $��0 5 0 0q�6@   �� 5)      $��DELETE��6    #��[ 61   
�������6^   5*      5,      �� 5.      -   5        $ btnView��5.      $��3 0 0 0q�6;   #��[  6L   ��5/      �� 50      $ 
Horizontal=�6!   .+�51        $ Magnify=�62   $��0 5 0 0q�6A   �� 52      $
��VIEW��6    #��[ 6/   
�������6\   53      55      �� 58      -   5         ��Name$ 	txtSearch��58      $	��105��6E   $��3 0 0 0q�6Q     MaterialDesignTextBoxBase#��[ 6b   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6�   �� 59      -   5        $ 	btnSearch��59      $��Search��6(   #��[  69    J� RenderTransformOrigin$ 2.133,0.524&�6�   $��89��6�   5:      &   System.Windows.Controls.DataGrid  5<   
   -   5          Name$ 
dgContacts��5<      $��3q�6   	   AutoGenerateColumns$	 False��62   $��1��6N     MaterialDesignDataGrid#��[ 6[   
   
IsReadOnly$

 True��6�      Columns 5=      0  *System.Windows.Controls.DataGridTextColumn  5>      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *	User_ID+  5?      $ 
First Name��6%    69   �� *	FirstName+  5@      $ Middle Name��6%    6:   �� *
MiddleName+  5A      $ 	Last Name��6%    68   �� *
LastName+  5B      $ Gender��6%    65   �� *Gender+  5C      $ Phone Number��6%    6;   �� *PhoneNumber+5E      5G      5H      