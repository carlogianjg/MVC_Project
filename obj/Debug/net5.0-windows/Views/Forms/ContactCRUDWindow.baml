   M S B A M L   `   `   `  ����F  BMVC_Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MVCDemo.Views.FormsMVCDemo.Views.Forms  5   	   +    %MVCDemo.Views.Forms.ContactCRUDWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:MVCDemo.Views.Forms     5   	     � Title$  ContactCRUDWindow��5	   	   $	��450��5
   	   $	��500��6    � WindowStyle$
 None=�6"    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   ��6#   Z� .��5      #  MaterialDesignThemes.Wpf.Card     UniformCornerRadius$ 20Q�6   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�63      MaterialDesignPaper#��[  6d   .��5   
   �  � ColumnDefinitions 5       � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    �� 5      $��40 �6    .+�5      �� -   5         ��Name$ btnClose��5      $��50��6<   $��Right=�6G   $��0q�6y   ��6c   Z� ��5      �� 5      .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 Close=�62   
���   �6?   5      5!      �� 5"      -   5        
 ��Name$
 txtFName��5"      $��	10 0 10 0q�6(   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
First Name��6;   $��1��6g   $
��10 0q�6t    % !MaterialDesignFloatingHintTextBox#��[ 6�   �� 5#      -   5        $
 txtMName��5#      $��	10 0 10 0q�6(   $ Middle Name��6;   $��2��6h   $
��10 0q�6u   #��[ 6�   �� 5$      -   5        $
 txtLName��5$      $��	10 0 10 0q�6(   $ 	Last Name��6;   $��3��6f   $
��10 0q�6s   #��[ 6�   �� 5%      -   5        $
 txtContactNo��5%      $��	10 0 10 0q�6,   $ Contact Number��6?   $��4��6o   $
��10 0q�6|   #��[ 6�   �� 5&       �� Orientation$ 
Horizontal=�6   $��5��62   $��10 0 0 0q�6?   .+�5'      	� -   5         	�Name$ rdbMale��5'      $
��Male��6/   6>   	� 5(      -   5        $ 	rdbFemale��5(      $��Female��61   6B   5)      �� 5*      -   5        $ btnSave��5*      $��7��6&   $	��100��63   ��5+      �� 5,      $ 
Horizontal=�6!   .+�5-        $	 ContentSave=�62   $��0 6 0 0q�6E   �� 5.      $
��Save��6    
�������6/   5/      51      52      53      54      