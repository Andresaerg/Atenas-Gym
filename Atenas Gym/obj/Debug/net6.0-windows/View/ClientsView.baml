   M S B A M L   `   `   `  ����E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  5      ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  5      !    Atenas_Gym.View.ClientsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:Atenas_Gym.View     5      8	viewModel"clr-namespace:Atenas_Gym.ViewModel     5      .��5
      �   � RowDefinitions  5   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   ��    	myTextBox#���   6   $��0��5       �� 	MaxLength$ 10��5      
������� �� 
CaretBrush
 �����$��Medium"�5      $��
Montserrat)�5      $��14(�5      
�������$��20��5      �� 5   
   $��1��6   .+�5      �� $��Tabla de clientes��6     secondaryForeground#��[ 5      $��Center=�5      $��15(�5      $��
Montserrat)�5       &   System.Windows.Controls.DataGrid  5!      
������ #��[ 5#         
IsReadOnly$
 True��5$         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 5%      ��5!      �� *	Clients+ � 	Resources 5&      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        7  �� 5'      "  6   .�5(      ��  � ��8   67   �� 5)       � ��
 ���� 67   �� 5*       � ��$ Center=�6@   5+      5,      5-      5.      50      51      