   M S B A M L   `   `   `  ����F  BMVC_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MVCDemo.Views.FormsMVCDemo.Views.Forms  5   	   /    )MVCDemo.Views.Forms.ContactBulkCRUDWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:MVCDemo.Views.Forms     5   	     � Title$  ContactCRUDWindow��5	   	   $	��600��5
   	   $	��700��6    � WindowStyle$
 None=�6"    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   ��6#   Z� .��5      #  MaterialDesignThemes.Wpf.Card     UniformCornerRadius$ 20Q�6   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�63      MaterialDesignPaper#��[  6d   .��5   
   �  � ColumnDefinitions 5       � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��* �6    �� 5      $��40 �6    .+�5      �� -   5         ��Name$ btnClose��5      $��50��6<   $��Right=�6G   $��0q�6y   ��6c   Z� ��5      �� 5      .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 Close=�62   
���   �6?   5       5"      �� 5#      -   5        
 ��Name$
 txtFName��5#      $��	10 0 10 0q�6(   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
First Name��6;   $��1��6g   $
��10 0q�6t    % !MaterialDesignFloatingHintTextBox#��[ 6�   �� 5$      -   5        $
 txtMName��5$      $��	10 0 10 0q�6(   $ Middle Name��6;   $��2��6h   $
��10 0q�6u   #��[ 6�   �� 5%      -   5        $
 txtLName��5%      $��	10 0 10 0q�6(   $ 	Last Name��6;   $��3��6f   $
��10 0q�6s   #��[ 6�   �� 5&      -   5        $
 txtContactNo��5&      $��	10 0 10 0q�6,   $ Contact Number��6?   $��4��6o   $
��10 0q�6|   #��[ 6�   �� 5'       �� Orientation$ 
Horizontal=�6   $��5��62   $��10 0 0 0q�6?   .+�5(      	� -   5         	�Name$ rdbMale��5(      $
��Male��6/   6>   	� 5)      -   5        $ 	rdbFemale��5)      $��Female��61   6B   5*      �� 5+      -   5        $ btnAdd��5+      $��6��6%   $	��100��62   ��5,      �� 5-      $ 
Horizontal=�6!   .+�5.        $
	 Plus=�62   $��0 6 0 0q�6>   �� 5/      $	��ADD��6    
�������6.   50      52      &   System.Windows.Controls.DataGrid  54      -	   5          Name$ 
dgContacts��54   $   $��7��6      CanUserAddRows$ False��68      AutoGenerateColumns$ False��6O   $��10q�6�      Columns 55      4  .System.Windows.Controls.DataGridTemplateColumn  56         CellTemplate 57      �� 58      .R�59   "   �� -
   5         & "MaterialDesignValidationErrorBrush#��[ 59   )   $��0q�6   ��5:   &   �� 5;   *   $ 
Horizontal=�65   .+�5<   .     $	 Trash=�6F   $��0 6 0 0q�6S   �� 5=   .   $��Remove��64   
�������6E   5>   +   5@   #   5A      5C      0  *System.Windows.Controls.DataGridTextColumn  5D      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 65   �� *	User_ID+  5E      $ 
First Name��6)    6=   �� *	FirstName+  5F      $ Middle Name��6)    6>   �� *
MiddleName+  5G      $ 	Last Name��6)    6<   �� *
LastName+  5H      $ Gender��6)    69   �� *Gender+  5I      $ Phone Number��6)    6?   �� *PhoneNumber+5K      �� 5M      -   5        $ btnSave��5M      $
��SAVE��6;   $��8��6J   $	��150��6W   $��Right=�6c   $��0 3 10 0q�6   5O      5P      5Q      