   M S B A M L   `   `   `  ����E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  5   	   ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  5   	       Atenas_Gym.View.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Atenas_Gym.View     5   	   8	viewModel"clr-namespace:Atenas_Gym.ViewModel     5   	   X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  5   	     � Title$  Atenas Gym | Dashboard��5
   	   $	��700��6(   $
��1200��65    � Icon$ /Images/App-Logo.png��5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � DataContext 5      (   "Atenas_Gym.ViewModel.MainViewModel  5   
    � 	Resources 5       �� DataType(   "Atenas_Gym.ViewModel.HomeViewModel   Atenas_Gym.View.HomeView-  'Atenas_Gym.ViewModel.ReceptionViewModel#   Atenas_Gym.View.ReceptionView+   %Atenas_Gym.ViewModel.ClientsViewModel!   Atenas_Gym.View.ClientsView*   $Atenas_Gym.ViewModel.PlanesViewModel 	   Atenas_Gym.View.PlanesView*
   $Atenas_Gym.ViewModel.CortesViewModel    Atenas_Gym.View.CortesView*   $Atenas_Gym.ViewModel.ConfigViewModel    Atenas_Gym.View.ConfigView   BooleanToVisibility��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5#      *, +)(�� �     5'      *,
 +)(�� �     5+      *, +)&	  ,    �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5         5!      �� 5#   
   "  6   .R�5$      	  5%      �� 5'   
   " 
 6   .R�5(        5)      �� 5+   
   "  6   .R�5,        5-      �� 5/   
   6'   51      y�53      �� 54   
    �� Path$ 	IsVisible�6   	 �� Mode$	 TwoWay=�6#   
 �� 	Converter#
 [  61   .��57      ��  �� CornerRadius$ 10��6   $��5q�58      ��5:   
   �� 5;       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5<      �   borderColor1 � Color# [ 6    � Offset$ 0Q�6E   � 5=        borderColor2# [ 6   $
 0.75Q�6E   � 5>        borderColor3# [ 6   $ 1Q�6E   5?      ._�5B   
   �  � ColumnDefinitions 5C      �� 5E      -   5         ��Name$ sideBar��5E   /   $	��250 �6#   6/   �� 5G      $��* �6#   .+�5K      �� $ 5.5,0,0,5.5��6   $��0��5L      ��5M      �� 5N      $	 0,0&�6*   $
 1,.7&�6;   .��5O      �   secondaryBackColor1# [ 6'   $ 0Q�6T   � 5P        secondaryBackColor2# [ 6'   $ 1Q�6T   5Q      ._�5T      �� -   5        .+�5V      ��  �� Orientation$ 
Horizontal=�6!   $��35��5W   !   $��
15,25,0,40q�5X   !   .+�5Y      �� $��/Images/App-Logo.png��6    $��30��6>   �� 5Z      $��
ATENAS GYM��6$     secondaryForeground#��[ 5[   $   $��20(�5\   $   $��Medium"�5]   $   $��Center=�5^   $   $��10,0,0,0q�5_   $   �� 5`      -   5        $��30��5`   !   $��40,0,0,0q�5a   !     controlButton#��[ 5c   !   .��5d      !  FontAwesome.Sharp.IconImage  -   5          Name$ ContractIcon��5e   +   �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ ChevronLeft=�5d   +      
Foreground# [ 6>   $��20��5f   +   5g      5i      	� 5k      -   5         	�Name$ dashboardBtn��5k   "     
menuButton#��[ 5l   "   
 � Tag# [ 5m   "    d� 	IsChecked$
 TrueY�5o   "   ��5n   "   �� *ShowHomeViewCommand+.��5p      �� $ 
Horizontal=�6%   .+�5q        $
 Home=�6+    	 menuButtonIcon#��[	 67   �� 5r      $��	Dashboard��6(    
 menuButtonText#��[
 69   5s      5t      	� 5v      -   5        $ receptionBtn��5v   "   #��[ 5w   "   # [ 5x   "   ��5y   "   �� *ShowReceptionViewCommand+.��5z      �� $ 
Horizontal=�6%   .+�5{        $ ConciergeBell=�6+   #��[	 6@   �� 5|      $��
Recepción��6(   #��[
 69   5}      5~      	� 5�      #��[ 6"   # [ 5�   "   ��5�   "   �� *ShowClientsViewCommand+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ PeopleGroup=�6+   #��[	 6>   �� 5�      $��Clientes��6(   #��[
 68   5�      5�      	� 5�      -   5        $ plansBtn��5�   "   #��[ 5�   "   # [ 5�   "   ��5�   "   �� *ShowPlanesViewCommand+.��5�      �� $ 
Horizontal=�6%   .+�5�        $
 List=�6+   #��[	 67   �� 5�      $��Planes��6(   #��[
 66   5�      5�      	� 5�      -   5        $ cutsBtn��5�   "   #��[ 5�   "   # [ 5�   "   ��5�   "   �� *ShowCortesViewCommand+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ Dollar=�6+   #��[	 69   �� 5�      $��Cortes��6(   #��[
 66   5�      5�      	� 5�      -	   5        $ trainersBtn��5�   "   #��[ 5�   "   # [ 5�   "   ��5�   "   �� *ShowConfigViewCommand+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ Dumbbell=�6+   #��[	 6;   �� 5�      $��Entrenadores��6(   #��[
 6<   5�      5�      	� 5�      #��[ 6"   # [ 5�   "   ��5�   "   �� *ShowConfigViewCommand+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ Gears=�6+   #��[	 68   �� 5�      $��Configuración��6(   #��[
 6=   5�      5�      	� 5�      #��[ 6"   # [ 5�   "   ��5�   "   �� *Logout+.��5�      �� $ 
Horizontal=�6%   .+�5�        $ SignOut=�6+   #��[	 6:   �� 5�      $��Log out��6(   #��[
 67   5�      5�      5�      5�      �� 5�      $ 0,5.5,5.5,0��6   $��1��5�      ��5�      �� 5�      $	 0,0&�6*   $ 1,1.3&�6;   .��5�      �   primaryBackColor1# [ 6'   $ 0Q�6R   � 5�        primaryBackColor2# [ 6'   $ 1Q�6R   5�      ._�5�      �  � RowDefinitions 5�      �� 5�      $��25 �6(   �� 5�      $��35 �6(   �� 5�      $��* �6(   .+�5�      � $��0��6    5�      �� 5�      �� 5�      $��40 �6/   �� 5�      $��40 �6/   �� 5�      $��40 �6/   .+�5�      �� -
   5         ��Name$ pnlControlBar��5�   %   $ 
Horizontal=�5�   %   $��0��5�   %   $��RightToLeft=�5�   %   
������ $��0,0,5,0q�5�   %   5�      �� 5�      -   5         ��Name$ Minimize��5�   !   $��1��5�      #��[ 5�      # [ 5�      .��5�        $ WindowMinimize=�6+   $��11��6A     controlButtonIcon#��[ 6L   5�      �� 5�      -   5        $ Maximize��5�   !   $��2��5�      #��[ 5�      # [ 5�      .��5�        -   5        $ MaximizeStatus��5�   +   $ Square=�6C   #��[ 6Q   5�      �� 5�      -   5        $ Close��5�   !     controlCloseButton#��[ 5�      $��3��5�      # [ 5�      .��5�        $ Xmark=�6+     controlCloseButtonIcon#��[ 68   5�      5�      � 5      $��1��6    5     �� 5     �� 5     .+�5     �� $ 
Horizontal=�6%   $��0��5	  %   $��Center=�5
  %   .+�5     �� -   5        $ openBtnIcon��5  %   $��30��5  %   $��0,0,0,0q�5  %   ${�False��5  %   $y�Hidden=�5  %   #��[ 5  %   .��5  "     -   5        $ OpenIcon��5  +   $ ChevronRight=�5  /   # [ 6C   $��20��5  +   5       5     $��20��5  +   $��20��5  +   # [ 5  +   $��	35,0,10,0q�5  +    5  +   �� *Icon+5  +   �� 5     #��[ 5  (   $��
Montserrat)�5  (   $��16(�5  (   $��Medium"�5   (   $��Center=�5!  (   ��5  (   �� *
Breadcrumb+5!  (   5#     �� 5&     $��1��6%   $ 
Horizontal=�5'  %   $��RightToLeft=�5(  %   $��Center=�5)  %   $��0,0,10,0q�5*  %   .+�5,     ��   userDataButton#��[ 6%   # [ 5-  %   .��5.  "     $ 	AngleDown=�6/   $��12��5/  /   $��12��50  /     userDataButtonIcon#��[ 51  /   52     �� 54     $ Vertical=�6)   .+�56  "   �� -   5         ��Name$ Status��56  ,   #��[ 58  ,   $	��Top=�59  ,   $��
Montserrat)�5:  ,   $��10(�5;  ,   ��57  ,   �� *CurrentUserAccount.Cargo+5;  ,   �� 5=  "   #��[ 5>  ,   $��
Montserrat)�5?  ,   $��12(�5@  ,   $��Center=�5A  ,   ��5=  ,   �� * CurrentUserAccount.DisplayName+5A  ,   5C     A� 5F     $��35��6&   $��35��5G  &     plainTextColor3#��[ 5H  &   $��2��5I  &   $��	10,0,10,0q�5J  &   ��5K  "   �� 5L  &    �� ImageSource$ /Images/App-Logo.png��61   5O     5Q     5T     �� 5W     -   5        $��contentControl��5Z  %   $��2��5X  %   $��25q�5Y  %   ��5W  %   �� *CurrentChildView+5Z  %   5\     5^     5_     5b     5d     