   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  !    Atenas_Gym.View.ClientsView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:Atenas_Gym.View     8	viewModel"clr-namespace:Atenas_Gym.ViewModel     .���   � RowDefinitions  �� $��50 ��� $��* �.+���    	myTextBox#���   $��0�� �� 	MaxLength$ 10��
������� �� 
CaretBrush
 �����$��Medium"�$��
Montserrat)�$��14(�
�������$��20���� $��1��.+��� $��Tabla de clientes��  secondaryForeground#��[ $��Center=�$��15(�$��
Montserrat)�&   System.Windows.Controls.DataGrid  
������ #��[    
IsReadOnly$
 True��   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells ���� *	Clients+ � 	Resources =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%_   '        7  �� "  .���  � ��8   ��  � ��
 ���� ��  � ��$ Center=�