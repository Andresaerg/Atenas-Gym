   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel      Atenas_Gym.View.HomeView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:Atenas_Gym.View     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  X	 TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp 	 >wpf4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf 	 2	viewmodel"clr-namespace:Atenas_Gym.ViewModel 	 $
��Auto��$
��Auto��  � 	Resources    LiveCharts.Wpf.Separator �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value#  LiveCharts.Wpf.DefaultTooltip��%  '        '  �     �� "  .���  �@ StrokeThickness$ 1Q���  �@ Stroke �	#4BFFFFFF P�  �@ AxisOrientation$ X=�. ���  � {�$ False����  �@ Step$ 1Q��� "  .���  � �� �#343434��  �@J�Opacity$	 .95Q�.���  � RowDefinitions �� $��* ��� $��* ��� $��* �.+�� $��0��$
��Auto�� � ColumnDefinitions �� $��* ��� $��* ��� $��* ��� $��* �.+�#  MaterialDesignThemes.Wpf.Card  $��Stretch=�$��Stretch=�$��0������ 	 �� EndPoint$	 0.5,1&�
 �� 
StartPoint$
 0.5,0.4&�.���    borderColor3 � Color# [  �   borderColor1# [  � Offset$ 1Q�.���  �� $��* ��� $��* �.+���  �� Orientation$ Vertical=�$��0��$��2��.+��� $��Ganancia mensual��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$	��160��$��
Montserrat)�$��14(�  secondaryForeground#��[ �� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��18(�$
��Bold"����� *Monto+ �� StringFormat$ $ {0}���� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$��90��$��
Montserrat)�#��[ $��12(�
������ ���� *
MontoTotal+$ Anual: $ {0}��! 	 FontAwesome.Sharp.IconImage  � 	 �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ CircleDollarToSlot=�   
Foreground �	#FF202121$
��Auto��$
��Auto��$��0,0,0,0q�$��1��  $��10,0,0,0q�$��Stretch=�$	��180��$	��130��$��1������ $	 0.5,1&�$
 0.5,0.4&�.���   primaryBackColor1# [ �   primaryBackColor2# [ $ 1Q�.���  �� $��* ��� $��* �.+��� $ Vertical=�$��0��$��2��.+��� $��Clientes actuales��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$	��160��$��
Montserrat)�$��14(�#��[ �� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��18(�$
��Bold"����� *
Clientes+�� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��12(����� *
NewClients+$  {0} clientes nuevos��  $ 	UserGroup=�
 �  ��$
��Auto��$
��Auto��$��0,0,0,0q�$��1��  $��10,0,0,0q�$��Stretch=�$	��180��$	��130��$��2������ $	 0.5,1&�$
 0.5,0.4&�.��� # [  � # [ $ 1Q�.���  �� $��* ��� $��* �.+��� $ Vertical=�$��0��$��2��.+��� $��Entrenadores��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$	��160��$��
Montserrat)�$��14(�#��[ �� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��18(�$
��Bold"����� *
Trainers+�� $��Actualizado hoy��$
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��12(�  $ Dumbbell=� �	#FF202121$
��Auto��$
��Auto��$��0,0,0,0q�$��1��  $��10,0,0,0q�$��Stretch=�$	��180��$	��130��$��3������ $	 0.5,1&�$
 0.5,0.4&�.��� # [ � # [ $ 1Q�.���  �� $��* ��� $��* �.+��� $ Vertical=�$��0��$��2��.+��� $��Planes disponibles��$
��Left=�$��30��$��	10,10,0,0q�$	��Top=�$	��160��$��
Montserrat)�$��14(�#��[ �� $
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��18(�$
��Bold"����� *Plans+�� $��Actualizado hoy��$
��Left=�$��30��$��10,5,0,0q�$	��Top=�$	��130��$��
Montserrat)�#��[ $��12(�  $ ListAlt=�
 �  ��$
��Auto��$
��Auto��$��0,0,0,0q�$��1��  $
��Auto��$��1��$��Stretch=�$��Stretch=�$
��Auto��
������ .��#  LiveCharts.Wpf.CartesianChart  &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=�#��[    Series �� *SeriesCollection+   AxisX �� *XAxisCollection+   AxisY   LiveCharts.Wpf.Axis     Title$ Clientes��� $��2��.+��  �� $��* ��� $��* �.+�  $��Stretch=�$
��Auto��$��0��$��Stretch=�$
��Auto��
������ $��0,0,50,0q�.��	  LiveCharts.Wpf.PieChart	  $ Right=�$��15(�#��[  �� *PieSeriesCollection+  $��2��$��Stretch=�
������ #��[ .���� .+��� $#��Últimos clientes registrados��$��Center=�$��14(�$��0,0,0,10q�&
   System.Windows.Controls.DataGrid
  
������ #��[  
  
IsReadOnly$
 True������ *	Clients+  =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%_   '        7  �� "  .���  � ��8   ��  � ��
 ���� ��  � ��$ Center=�