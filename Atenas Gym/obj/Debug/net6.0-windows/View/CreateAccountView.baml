   M S B A M L   `   `   `  ����E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  5      E'clr-namespace:Atenas_Gym.CustomControlsAtenas_Gym.CustomControls  5      ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  5      \ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls 5	      '    !Atenas_Gym.View.CreateAccountView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:Atenas_Gym.View     5      Bcustomcontrols'clr-namespace:Atenas_Gym.CustomControls     5      8	viewModel"clr-namespace:Atenas_Gym.ViewModel     5      Wlocal1Dclr-namespace:System.Windows.Controls;assembly=PresentationFramework     5	      .��5      ��   �� CornerRadius$  15��6   ��5   
   �� 5       �� ImageSource$" /Images/Spartan-bg-edit2.jpg��6    j� Stretch$ UniformToFill=�5       j� 
AlignmentX$ Center=�5      ._�5   
   �� $  10��6   $��5q�5       J� Opacity$	 .95Q�5      ��5      �� 5       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5      �    borderColor1 � Color# [  6#    � Offset$ 0Q�6I   � 5        borderColor2# [ 6#   $
 0.75Q�6I   � 5        borderColor3# [ 6#   $ 1Q�6I   5      ��5"      �� 5#      $	 0,1&�6&   $	 1,0&�67   .��5$      �   primaryBackColor1# [ 6#   $ 0Q�6N   � 5%        primaryBackColor2# [ 6#   $
 0.75Q�6N   5&      ._�5)      � 	 � RowDefinitions	 5*      �� 5+      $��30 �6$   �� 5,      .+�5/      � 
 � ColumnDefinitions
 50      �� 51      �� 52      $��40 �6+   �� 53      $��40 �6+   �� 54      $��0 �6+   .+�56      �� $�� ��6    
���  ��$��15(�58       $��
Montserrat)�59       $��0��5:       $��Center=�5;       $��35,0,0,0q�5<       �� 5=      -   5         ��Name$ Minimize��5=      $��0q�5>      $��1��5?      $��25(�5@      $��-��5A      
�������$��
Montserrat)�5C       � Cursor$
 Hand��5D      ��5G      �� 5H       �� 
TargetType" ��6.   .R�5I   "   �� #��z��6)   ._�5J   &   �� $��Center=�67   $��Center=�6T   5K   #   5L      ��5O      �� 5P       �� 
TargetType" ��6$   .�5Q   "   ��  �� Property � �� �� Value
 ���� 6?    �� Triggers 5R   "   P� 5S   &    P� Property �@J�IsMouseOver P� Value$
 True��6E   . �5T   *   ��  � �� �#2D2D2D6G   5U   '   5W      5Z      �� 5[      -   5        $ Close��5[      $��0q�5\      $��20(�5]      $��x��5^      $��2��5_      
�������$��
Montserrat)�5a      $
 Hand��5b      ��5e      �� 5f      " ��6.   .R�5g   "   �� #��z��6)   $  0,5,0,0��5h   )   ._�5i   &   �� $��Center=�67   $��Center=�6T   5j   #   5k      ��5n      �� 5o      " ��6$   .�5p   "   ��  � ��
 ���� 6?    5q   "   P� 5r   &    �@J�IsMouseOver$
 True��6E   . �5s   *   ��  � ��
 �  ��6G   5t   '   5v      5y      5z      �� 5|      -   5         ��Name$ 
loginPanel��5|      $	��250��5}      $��1��5~       �� Orientation$ Vertical=�5      $��0,0,0,0q�5�      .+�5�      �� $��/Images/Logo.png��6   $	��200��5�      $	��200��5�      �� 5�      $��Nombre completo��6   $
��Left=�5�      $��25��5�      $��0, 25, 0, 0q�5�      ���#EAEAEA$��
Montserrat)�5�      $��12(�5�      $��Medium"�5�      �� 5�      -   5         ��Name$ Username��5�      $��Stretch=�5�      
�������$��0,0,0,2q�5�       �� 
CaretBrush
 �����$��Medium"�5�      $��
Montserrat)�5�      $��0,5,0,0q�5�      $��30,0,0,0q�5�      
�������$��20��5�      ��5�      �� *
Fullname+ �� UpdateSourceTrigger$ PropertyChanged=�.��6^   ��5�      �� 5�      " ��6$   .�5�   "   ��  � �� 5�   &   �� 5�   *   " ��6:   .R�5�   .   �� $��border��5�   5   #��z��5�   5    �� Padding# z��5�   5   #��z��5�   5   #��z��5�   5    J� SnapsToDevicePixels$
 True��5�   5   ._�5�   2   �� $��PART_ContentHost��5�   7   $��Hidden=�5�   ?   $��Hidden=�5�   7   $|�False��5�   7   5�   /    �� Triggers 5�   .   P� 5�   2    �@J�IsMouseOver$
 True��6[   . �5�   6   ��  �� 
TargetName$ border��6[    � ��
 �  ��5�   5   5�   3   P� 5�   2    �@J�	IsFocused$
 True��6Y   . �5�   6   �� $ border��6[    � ��
 �  ��5�   5   5�   3   5�   +   5�   #   5�      .��5�   )   ��5�      �� 5�      $ /Images/user-icon.png��6)   $
 none=�5�   !   $
 Left=�5�   !   .��5�   .   5�      �� 5�      -   5         ��Name$ WatermarkUsername��5�       $��Ingrese su nombre��5�       $��
35,-20,0,0q�5�       
�������$��Medium"�5�       $��
Montserrat)�5�        K� ZIndex$ -1��5�       5�      �� 5�      $��Usuario��6   $
��Left=�5�      $��25��5�      $��0, 25, 0, 0q�5�      ���#EAEAEA$��
Montserrat)�5�      $��12(�5�      $��Medium"�5�      �� 5�      -   5        $ Cedula��5�       �� 	MaxLength$ 10��5�      $��Stretch=�5�      
�������$��0,0,0,2q�5�      
 �����$��Medium"�5�      $��
Montserrat)�5�      $��0,5,0,0q�5�      $��30,0,0,0q�5�      
�������$��20��5�      ��5�      �� *UsernameAcc+$ PropertyChanged=�.��5�   I   ��5�      �� 5�      " ��6$   .�5�   "   ��  � �� 5�   &   �� 5�   *   " ��6:   .R�5�   .   �� $��border��5�   5   #��z��5�   5   # z��5�   5   #��z��5�   5   #��z��5�   5   $
 True��5�   5   ._�5�   2   �� $��PART_ContentHost��5�   ?   $��Hidden=�5�   ?   $��Hidden=�5�   ?   $|�False��5�   ?   5�   /    5�   .   P� 5�   2    �@J�IsMouseOver$
 True��6[   . �5�   6   �� $ border��6[    � ��
 �  ��5�   =   5�   3   P� 5�   2    �@J�	IsFocused$
 True��6Y   . �5�   6   �� $ border��6[    � ��
 �  ��5�   =   5�   3   5  +   5  #   5     .��5  )   ��5     �� 5     $ /Images/user-icon.png��6)   $
 none=�5	  )   $
 Left=�5
  )   .��5  .   5     �� 5     -   5        $ WatermarkCI��5      $��Ingrese su cédula��5      $��
35,-20,0,0q�5      
�������$��Medium"�5      $��
Montserrat)�5      $ -1��5      5     �� 5     $��Contraseña��6   $
��Left=�5     $��25��5     $��0, 25, 0, 0q�5     ���#EAEAEA$��
Montserrat)�5     $��12(�5     $��Medium"�5     3   -Atenas_Gym.CustomControls.BindablePasswordBox  5!     -   5           Name$
  Pass��5!  9   $��0,5,0,0q�5#  9   $��20��5$  9   !   Password! 5"  9   �� *
Password+" �� Mode$" TwoWay=�$ PropertyChanged=�5%     �� 5'     -	   5        $ ErrorMessageAcc��5'      $��0,5,0,0q�5)      
���  ��$��Medium"�5+      $��
Montserrat)�5,      $ -1��5-      $
��Wrap=�5.      ��5(      �� *ErrorMessageAcc+$" TwoWay=�5/     �� 51     -
   5        $ Create��51     $��0q�53     $��15(�54     $��25��55     $��Crear cuenta��56     $��
Montserrat)�57     $
 Hand��58     $��20 10q�59     # �� 	IsDefault$
# True��5:     ��52     �� *CreateAccount+��5<     �� 5=     " ��6$   .�5>  "   ��  � �� �#5D5D5D6?   �� 5?  "    � ��
 �����6?    5@  "   P� 5A  &    �@J�IsMouseOver$
 True��6E   . �5B  *   ��  � ��
 �  ��6G   5C  '   5E     ��5H     �� 5I     " ��6.   .R�5J  "   �� $  10��6)   #��z��5K  -   ._�5L  &   �� $��Center=�67   $��Center=�6T   5M  #   5N     5Q     �� 5S     -   5        $ BackToLogin��5S     $��Volver��5T     $
��Bold"�5U     $��0,0,0,5q�5V     $	��250��5W       controlButton#��[ 5X     5Y     5[     5\     5^     5_     5a     