   M S B A M L   `   `   `  ����E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  5   	   ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  5   	   E'clr-namespace:Atenas_Gym.CustomControlsAtenas_Gym.CustomControls  5   	       Atenas_Gym.View.LoginView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Atenas_Gym.View     5   	   8	viewModel"clr-namespace:Atenas_Gym.ViewModel     5   	   Bcustomcontrols'clr-namespace:Atenas_Gym.CustomControls     5   	   -   5          � Title$  Atenas Gym | Login��5
   	   $	��550��6$   $	��800��61    � Icon$ /Images/App-Logo.png��5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	   
������  � AllowsTransparency$
 True��5   	    +� FocusedElement 5   	   ��  �� ElementName$ Cedula�� � DataContext 5      )   #Atenas_Gym.ViewModel.LoginViewModel  5   
   	 � 	Resources	 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
   
 �� Path$
 IsViewVisible�6    �� Mode$ TwoWay=�6'    �� 	Converter# [  65   .��5"      ��  �� CornerRadius$ 15��6   ��5#   
   �� 5$       �� ImageSource$" /Images/Spartan-bg-edit2.jpg��6    j� Stretch$ UniformToFill=�5%       j� 
AlignmentX$ Center=�5&      ._�5)   
   �� $ 10��6   $��5q�5*       J� Opacity$	 .95Q�5+      ��5-      �� 5.       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5/      �   borderColor1 � Color# [ 6#    � Offset$ 0Q�6I   � 50        borderColor2# [ 6#   $
 0.75Q�6I   � 51        borderColor3# [ 6#   $ 1Q�6I   52      ��55      �� 56      $	 0,1&�6&   $	 1,0&�67   .��57      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 58        primaryBackColor2# [ 6#   $
 0.75Q�6N   59      ._�5<      �  � RowDefinitions 5=      �� 5>      $��30 �6$   �� 5?      .+�5B      �  � ColumnDefinitions 5C      �� 5D      �� 5E      $��40 �6+   �� 5F      $��40 �6+   �� 5G      $��0 �6+   .+�5I      �� $�� ��6    
���  ��$��15(�5K       $��
Montserrat)�5L       $��0��5M       $��Center=�5N       $��35,0,0,0q�5O       �� 5P      -   5         ��Name$ Minimize��5P      $��0q�5Q      $��1��5R      $��25(�5S      $��-��5T      
�������$��
Montserrat)�5V       � Cursor$
 Hand��5W      ��5Z      �� 5[       �� 
TargetType" ��6.   .R�5\   "   �� #��z��6)   ._�5]   &   �� $��Center=�67   $��Center=�6T   5^   #   5_      ��5b      �� 5c       �� 
TargetType" ��6$   .�5d   "   ��  �� Property � �� �� Value
 ���� 6?    �� Triggers 5e   "   P� 5f   &    P� Property �@J�IsMouseOver  P� Value$
  True��6E   . �5g   *   ��  � �� �#2D2D2D6G   5h   '   5j      5m      �� 5n      -   5        $ Close��5n      $��0q�5o      $��20(�5p      $��x��5q      $��2��5r      
�������$��
Montserrat)�5t      $
 Hand��5u      ��5x      �� 5y      " ��6.   .R�5z   "   �� #��z��6)   $ 0,5,0,0��5{   )   ._�5|   &   �� $��Center=�67   $��Center=�6T   5}   #   5~      ��5�      �� 5�      " ��6$   .�5�   "   ��  � ��
 ���� 6?    5�   "   P� 5�   &    �@J�IsMouseOver$
  True��6E   . �5�   *   ��  � ��
 �  ��6G   5�   '   5�      5�      5�      �� 5�      $	��250��6   $��2��5�      ! �� Orientation$! Vertical=�5�      $��0,10,0,0q�5�      .+�5�      �� $��/Images/Logo.png��6   $	��200��5�      $	��200��5�      �� 5�      $��Usuario��6    $
��Left=�5�      $��25��5�      $��0, 25, 0, 0q�5�      ���#EAEAEA$��
Montserrat)�5�      $��12(�5�      $��Medium"�5�      �� 5�      -   5        " ��Name$" Cedula��5�   "   # �� 	MaxLength$# 10��5�   "   $��Stretch=�5�   "   
�������$��0,0,0,2q�5�   "   $ �� 
CaretBrush
$ �����$��Medium"�5�   "   $��
Montserrat)�5�   "   $��0,5,0,0q�5�   "   $��30,0,0,0q�5�   "   
�������$��20��5�   "   $
��Left=�5�   M   $	��Top=�6o   $% �� HorizontalScrollBarVisibility$% Disabled=�6�   ��5�   "   �� *
Username+& �� UpdateSourceTrigger$& PropertyChanged=�.��5�   �   ��5�      �� 5�      " ��6$   .�5�   "   ��  � �� 5�   *   �� 5�   .   " ��6>   .R�5�   2   �� $��border��5�   9   ' �� Padding#' z��5�   9   #��z��5�   9   #��z��5�   9   #��z��5�   9   ( J� SnapsToDevicePixels$
( True��5�   9   ._�5�   6   �� $��PART_ContentHost��5�   ?   $��Hidden=�5�   C   $��Hidden=�5�   ?   $|�False��5�   ?   5�   3   ) �� Triggers) 5�   2   P� 5�   6    �@J�IsMouseOver$
  True��6_   . �5�   :   �� * �� 
TargetName$* border��6_    � ��
 �  ��5�   =   5�   7   P� 5�   6    �@J�	IsFocused$
  True��6]   . �5�   :   �� $* border��6_    � ��
 �  ��5�   =   5�   7   5�   /   5�   '   5�   #   .��5�   -   ��5�      �� 5�   "   $ /Images/user-icon.png��6-   $
 none=�5�   )   $
 Left=�5�   )   .��5�   2   5�      �� 5�      -   5        + ��Name$+ WatermarkCI��5�   $   $��Ingrese su cédula��5�       $��
35,-20,0,0q�5�       
�������$��Medium"�5�       $��
Montserrat)�5�       , K� ZIndex$, -1��5�       5�      �� 5�      $��Contraseña��6    $
��Left=�5�      $��25��5�      $��0, 25, 0, 0q�5�      ���#EAEAEA$��
Montserrat)�5�      $��12(�5�      $��Medium"�5�      3   -Atenas_Gym.CustomControls.BindablePasswordBox  5�      -   5        -  Name$
- Pass��5�   =   $��0,5,0,0q�5�   9   $��20��5�   9   .   Password. 5�   9   �� *
Password+$ TwoWay=�$& PropertyChanged=�5�      �� 5�      -   5        $+ ErrorMessage��5�   $   $��0,5,0,0q�5�       
���  ��$��Medium"�5�       $��
Montserrat)�5�       $, -1��5�       $
��Wrap=�5�       ��5�       �� *ErrorMessage+$ OneWay=�5�      �� 5�      -   5        $ Login��5�   !   $��0q�5�      $��15(�5�      $��25��5      $��Iniciar Sesión��5     $��
Montserrat)�5     $
 Hand��5     $��20 10q�5     / �� 	IsDefault$
/ True��5     ��5�      �� *LoginCommand+��5     �� 5	  "   " ��6(   .�5
  &   ��  � �� �#5D5D5D6C   �� 5  &    � ��
 �����6C    5  &   P� 5  *    �@J�IsMouseOver$
  True��6I   . �5  .   ��  � ��
 �  ��6K   5  +   5  #   ��5     �� 5  "   " ��62   .R�5  &   �� $ 10��6-   #��z��5  )   ._�5  *   �� $��Center=�6;   $��Center=�6X   5  '   5  #   5     �� 5     -	   5        $ Create_user��5  !   $��Crear nuevo usuario��5      
������ $��0q�5"     $
��Bold"�5#     ���#F5F2F2$��0,0,0,5q�5%     $	��250��5&       controlButton#��[ 5'     5(     �� 5)     -
   5        $+ Forgot_pass��5)      $��Olvidé mi contraseña��5*      $��Normal"�5+      ���#F5F2F20 �� TextAlignment$0 Center=�5-      $
 Hand��5.      50     52     53     54     56     