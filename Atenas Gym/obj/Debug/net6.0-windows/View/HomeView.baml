   M S B A M L   `   `   `  ����E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	      ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  5
          Atenas_Gym.View.HomeView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:Atenas_Gym.View     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      X	 TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp 	 5      >wpf4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf 	 5	      2	viewmodel"clr-namespace:Atenas_Gym.ViewModel 	 5
      $
��Auto��5      $
��Auto��5        � 	Resources  5        LiveCharts.Wpf.Separator �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value#  LiveCharts.Wpf.DefaultTooltip��%�  '        '  4    �� 5   
   "  6   .�5      ��  �@ StrokeThickness$ 1Q�60   6<   �� 5       �@ Stroke �	#4BFFFFFF6;    5      P� 5       �@ AxisOrientation$ X=�65   . �5      ��  � {�$ False��62   6B   �� 5       �@ Step$ 1Q�6-   69   5      5      �� 5   
   "  6   .�5      ��  � �� �#3434346+   �� 5       �@J�Opacity$	 .95Q�6(   5      5      .��5!      �  � RowDefinitions 5"   
   �� 5#      $��* �6   �� 5$      $��* �6   �� 5%      $��* �6   .+�5'   
   � $��0��6   $
��Auto��5(       � ColumnDefinitions 5)      �� 5*      $��* �6#   �� 5+      $��* �6#   �� 5,      $��* �6#   �� 5-      $��* �6#   .+�50      #  MaterialDesignThemes.Wpf.Card  $��Stretch=�6"   $��Stretch=�6@   $��0��6\   ��51      �� 52      	 �� EndPoint$	 0.5,1&�6*   
 �� 
StartPoint$
 0.5,0.4&�6;   .��53      �    borderColor3 � Color# [  6'   � 54        borderColor1# [ 6'    � Offset$ 1Q�6M   55      .��58      �  59      �� 5:      $��* �6+   �� 5;      $��* �6+   .+�5=      ��  �� Orientation$ Vertical=�6!   $��0��5>   !   $��2��5?   !   .+�5A      �� $��Ganancia mensual��6    $
��Left=�5B       $��30��5C       $��	10,10,0,0q�5D       $	��Top=�5E       $	��160��5F       $��
Montserrat)�5G       $��14(�5H         secondaryForeground#��[ 5I       �� 5J      $
��Left=�5K   $   $��30��5L   $   $��10,5,0,0q�5M   $   $	��Top=�5N   $   $	��130��5O   $   $��
Montserrat)�5P   $   #��[ 5Q   $   $��18(�5R   $   $
��Bold"�5S   $   ��5J   $   �� *Monto+ �� StringFormat$ $ {0}��5S   $   �� 5U      $
��Left=�5V   $   $��30��5W   $   $��10,5,0,0q�5X   $   $	��Top=�5Y   $   $��90��5Z   $   $��
Montserrat)�5[   $   #��[ 5\   $   $��12(�5]   $   
������ ��5U   $   �� *
MontoTotal+$ Anual: $ {0}��5^   $   5`      ! 	 FontAwesome.Sharp.IconImage  5b      � 	 �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ CircleDollarToSlot=�6#      
Foreground �	#FF202121$
��Auto��5d   #   $
��Auto��5e   #   $��0,0,0,0q�5f   #   $��1��5g   #   5h      5j        5k      $��10,0,0,0q�6"   $��Stretch=�64   $	��180��6R   $	��130��6a   $��1��6q   ��5l      �� 5m      $	 0.5,1&�6*   $
 0.5,0.4&�6;   .��5n      �   primaryBackColor1# [ 6'   � 5o        primaryBackColor2# [ 6'   $ 1Q�6R   5p      .��5r      �  5s      �� 5t      $��* �6+   �� 5u      $��* �6+   .+�5w      �� $ Vertical=�6!   $��0��5x   !   $��2��5y   !   .+�5{      �� $��Clientes actuales��6    $
��Left=�5|       $��30��5}       $��	10,10,0,0q�5~       $	��Top=�5       $	��160��5�       $��
Montserrat)�5�       $��14(�5�       #��[ 5�       �� 5�      $
��Left=�5�   $   $��30��5�   $   $��10,5,0,0q�5�   $   $	��Top=�5�   $   $	��130��5�   $   $��
Montserrat)�5�   $   #��[ 5�   $   $��18(�5�   $   $
��Bold"�5�   $   ��5�   $   �� *
Clientes+5�   $   �� 5�      $
��Left=�5�   $   $��30��5�   $   $��10,5,0,0q�5�   $   $	��Top=�5�   $   $	��130��5�   $   $��
Montserrat)�5�   $   #��[ 5�   $   $��12(�5�   $   ��5�   $   �� *
NewClients+$  {0} clientes nuevos��5�   $   5�        5�      $ 	UserGroup=�6#   
 �  ��$
��Auto��5�   #   $
��Auto��5�   #   $��0,0,0,0q�5�   #   $��1��5�   #   5�      5�        5�      $��10,0,0,0q�6"   $��Stretch=�64   $	��180��6R   $	��130��6a   $��2��6q   ��5�      �� 5�      $	 0.5,1&�6*   $
 0.5,0.4&�6;   .��5�      � # [  6'   � 5�      # [ 6'   $ 1Q�6M   5�      .��5�      �  5�      �� 5�      $��* �6+   �� 5�      $��* �6+   .+�5�      �� $ Vertical=�6!   $��0��5�   !   $��2��5�   !   .+�5�      �� $��Entrenadores��6    $
��Left=�5�       $��30��5�       $��	10,10,0,0q�5�       $	��Top=�5�       $	��160��5�       $��
Montserrat)�5�       $��14(�5�       #��[ 5�       �� 5�      $
��Left=�5�   $   $��30��5�   $   $��10,5,0,0q�5�   $   $	��Top=�5�   $   $	��130��5�   $   $��
Montserrat)�5�   $   #��[ 5�   $   $��18(�5�   $   $
��Bold"�5�   $   ��5�   $   �� *
Trainers+5�   $   �� 5�      $��Actualizado hoy��6    $
��Left=�5�       $��30��5�       $��10,5,0,0q�5�       $	��Top=�5�       $	��130��5�       $��
Montserrat)�5�       #��[ 5�       $��12(�5�       5�        5�      $ Dumbbell=�6#    �	#FF202121$
��Auto��5�   #   $
��Auto��5�   #   $��0,0,0,0q�5�   #   $��1��5�   #   5�      5�        5�      $��10,0,0,0q�6"   $��Stretch=�64   $	��180��6R   $	��130��6a   $��3��6q   ��5�      �� 5�      $	 0.5,1&�6*   $
 0.5,0.4&�6;   .��5�      � # [ 6'   � 5�      # [ 6'   $ 1Q�6R   5�      .��5�      �  5�      �� 5�      $��* �6+   �� 5�      $��* �6+   .+�5�      �� $ Vertical=�6!   $��0��5�   !   $��2��5�   !   .+�5�      �� $��Planes disponibles��6    $
��Left=�5�      $��30��5�      $��	10,10,0,0q�5�      $	��Top=�5�      $	��160��5�      $��
Montserrat)�5�      $��14(�5�      #��[ 5�      �� 5�      $
��Left=�5�   $   $��30��5�   $   $��10,5,0,0q�5�   $   $	��Top=�5�   $   $	��130��5�   $   $��
Montserrat)�5�   $   #��[ 5�   $   $��18(�5�   $   $
��Bold"�5�   $   ��5�   $   �� *Plans+5�   $   �� 5�      $��Actualizado hoy��6    $
��Left=�5       $��30��5      $��10,5,0,0q�5      $	��Top=�5      $	��130��5      $��
Montserrat)�5      #��[ 5      $��12(�5      5	       5     $ ListAlt=�6#   
 �  ��$
��Auto��5  #   $
��Auto��5  #   $��0,0,0,0q�5  #   $��1��5  #   5     5     5       5  
   $
��Auto��6   $��1��6,   $��Stretch=�69   $��Stretch=�6U   $
��Auto��6s   
������ .��5     #  LiveCharts.Wpf.CartesianChart  &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=�6!   #��[ 5  !      Series 5  !   �� *SeriesCollection+   AxisX 5  !   �� *XAxisCollection+   AxisY 5       LiveCharts.Wpf.Axis     Title$ Clientes��6   5     5      � 5!  
   $��2��6   .+�5"     �  5#     �� 5$     $��* �6'   �� 5%     $��* �6'   .+�5'       $��Stretch=�6&   $
��Auto��6D   $��0��6R   $��Stretch=�6b   $
��Auto��6~   
������ $��0,0,50,0q�6�   .��5(     	  LiveCharts.Wpf.PieChart	  $ Right=�5)  #   $��15(�5*  #   #��[ 5+  #    5(  #   �� *PieSeriesCollection+5,     5-       5.     $��2��6&   $��Stretch=�66   
������ #��[ 6m   .��5/     �� .+�50     �� $#��Últimos clientes registrados��6$   $��Center=�51  $   $��14(�52  $   $��0,0,0,10q�53  $   &
   System.Windows.Controls.DataGrid
  54     
������ #��[ 6\    
  
IsReadOnly$
 True��6�   ��6#   �� *	Clients+  55     =  7System.Windows.Controls.Primitives.DataGridColumnHeader��%�   '        7  �� 56  "   "  6(   .�57  &   ��  � ��8   6C   �� 58  &    � ��
 ���� 6C   �� 59  &    � ��$ Center=�6L   5:  #   5;     5<     5=     5>     5?     5@     5A     5B     