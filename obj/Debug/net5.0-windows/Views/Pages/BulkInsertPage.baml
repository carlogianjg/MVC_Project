   M S B A M L   `   `   `  ����F  BMVC_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MVCDemo.Views.PagesMVCDemo.Views.Pages  5      (    "MVCDemo.Views.Pages.BulkInsertPage   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MVCDemo.Views.Pages     5        N� Title$  Bulk Insert��5
      .��5      � 
������� � RowDefinitions 5   
   �� 5      $��35 �6   �� 5      $��* �6   �� 5      $��35 �6   �� 5      $��10 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10 0 0 0q�6.   .+�5      �� -   5         ��Name$ btnNew��5       +  'MaterialDesignRaisedSecondaryDarkButton#��[  6;   ��5      �� 5      $ 
Horizontal=�6!   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$	 Add=�62   $��0 5 0 0q�6=   �� 5      $	��NEW��6      MaterialDesignLabel#��[ 6.   
�������6[   5      5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
dgContacts��5         CanUserAddRows$ False��6'      AutoGenerateColumns$ False��6>   $��1��6�   $��10q�6�      Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn	   
Visibility$	 	Collapsed=�6)   
   CellTemplate
 5       �� 5!      .R�5"      �� -   5         & "MaterialDesignValidationErrorBrush#��[ 5"   %   $��0q�6{   ��5#   "   �� 5$   &   $ 
Horizontal=�61   .+�5%   *     $ Trash=�6B   $��0 6 0 0q�6O   �� 5&   *   $��Remove��60   
�������6A   5'   '   5)      5*      5,      0  *System.Windows.Controls.DataGridTextColumn  5-         Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *id+  5.      $ 
First Name��6%    69   �� *	FirstName+  5/      $ Middle Name��6%    6:   �� *
MiddleName+  50      $ 	Last Name��6%    68   �� *
LastName+  51      $ Gender��6%    65   �� *Gender+  52      $ Phone Number��6%    6;   �� *PhoneNumber+54      �� 55   
   -   5        $ btnSave��55      $
��SAVE��67   $��2��6F   $	��150��6S   $��Right=�6_   $��0 3 10 0q�6{   56      57      