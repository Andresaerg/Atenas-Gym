   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  E'clr-namespace:Atenas_Gym.CustomControlsAtenas_Gym.CustomControls  ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  \ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls '    !Atenas_Gym.View.CreateAccountView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:Atenas_Gym.View     Bcustomcontrols'clr-namespace:Atenas_Gym.CustomControls     8	viewModel"clr-namespace:Atenas_Gym.ViewModel     Wlocal1Dclr-namespace:System.Windows.Controls;assembly=PresentationFramework     .����   �� CornerRadius$  15������  �� ImageSource$" /Images/Spartan-bg-edit2.jpg�� j� Stretch$ UniformToFill=� j� 
AlignmentX$ Center=�._��� $  10��$��5q� J� Opacity$	 .95Q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���    borderColor1 � Color# [   � Offset$ 0Q��   borderColor2# [ $
 0.75Q��   borderColor3# [ $ 1Q����� $	 0,1&�$	 1,0&�.���   primaryBackColor1# [ $ 0Q��   primaryBackColor2# [ $
 0.75Q�._�� 	 � RowDefinitions	 �� $��30 ��� .+�� 
 � ColumnDefinitions
 �� �� $��40 ��� $��40 ��� $��0 �.+��� $�� ��
���  ��$��15(�$��
Montserrat)�$��0��$��Center=�$��35,0,0,0q��� -    ��Name$ Minimize��$��0q�$��1��$��25(�$��-��
�������$��
Montserrat)� � Cursor$
 Hand������  �� 
TargetType" ��.R��� #��z��._��� $��Center=�$��Center=�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 ����  �� Triggers P�  P� Property �@J�IsMouseOver P� Value$
 True��. ���  � �� �#2D2D2D�� -   $ Close��$��0q�$��20(�$��x��$��2��
�������$��
Montserrat)�$
 Hand������ " ��.R��� #��z��$  0,5,0,0��._��� $��Center=�$��Center=����� " ��.���  � ��
 ����  P�  �@J�IsMouseOver$
 True��. ���  � ��
 �  ���� -    ��Name$ 
loginPanel��$	��250��$��1�� �� Orientation$ Vertical=�$��0,0,0,0q�.+��� $��/Images/Logo.png��$	��200��$	��200���� $��Nombre completo��$
��Left=�$��25��$��0, 25, 0, 0q����#EAEAEA$��
Montserrat)�$��12(�$��Medium"��� -    ��Name$ Username��$��Stretch=�
�������$��0,0,0,2q� �� 
CaretBrush
 �����$��Medium"�$��
Montserrat)�$��0,5,0,0q�$��30,0,0,0q�
�������$��20������ *
Fullname+ �� UpdateSourceTrigger$ PropertyChanged=�.������ " ��.���  � �� �� " ��.R��� $��border��#��z�� �� Padding# z��#��z��#��z�� J� SnapsToDevicePixels$
 True��._��� $��PART_ContentHost��$��Hidden=�$��Hidden=�$|�False�� �� Triggers P�  �@J�IsMouseOver$
 True��. ���  �� 
TargetName$ border�� � ��
 �  ��P�  �@J�	IsFocused$
 True��. ��� $ border�� � ��
 �  ��.������ $ /Images/user-icon.png��$
 none=�$
 Left=�.���� -    ��Name$ WatermarkUsername��$��Ingrese su nombre��$��
35,-20,0,0q�
�������$��Medium"�$��
Montserrat)� K� ZIndex$ -1���� $��Usuario��$
��Left=�$��25��$��0, 25, 0, 0q����#EAEAEA$��
Montserrat)�$��12(�$��Medium"��� -   $ Cedula�� �� 	MaxLength$ 10��$��Stretch=�
�������$��0,0,0,2q�
 �����$��Medium"�$��
Montserrat)�$��0,5,0,0q�$��30,0,0,0q�
�������$��20������ *UsernameAcc+$ PropertyChanged=�.������ " ��.���  � �� �� " ��.R��� $��border��#��z��# z��#��z��#��z��$
 True��._��� $��PART_ContentHost��$��Hidden=�$��Hidden=�$|�False�� P�  �@J�IsMouseOver$
 True��. ��� $ border�� � ��
 �  ��P�  �@J�	IsFocused$
 True��. ��� $ border�� � ��
 �  ��.������ $ /Images/user-icon.png��$
 none=�$
 Left=�.���� -   $ WatermarkCI��$��Ingrese su cédula��$��
35,-20,0,0q�
�������$��Medium"�$��
Montserrat)�$ -1���� $��Contraseña��$
��Left=�$��25��$��0, 25, 0, 0q����#EAEAEA$��
Montserrat)�$��12(�$��Medium"�3   -Atenas_Gym.CustomControls.BindablePasswordBox  -      Name$
  Pass��$��0,5,0,0q�$��20��!   Password! �� *
Password+" �� Mode$" TwoWay=�$ PropertyChanged=��� -	   $ ErrorMessageAcc��$��0,5,0,0q�
���  ��$��Medium"�$��
Montserrat)�$ -1��$
��Wrap=����� *ErrorMessageAcc+$" TwoWay=��� -
   $ Create��$��0q�$��15(�$��25��$��Crear cuenta��$��
Montserrat)�$
 Hand��$��20 10q�# �� 	IsDefault$
# True������ *CreateAccount+���� " ��.���  � �� �#5D5D5D��  � ��
 ����� P�  �@J�IsMouseOver$
 True��. ���  � ��
 �  ������ " ��.R��� $  10��#��z��._��� $��Center=�$��Center=��� -   $ BackToLogin��$��Volver��$
��Bold"�$��0,0,0,5q�$	��250��  controlButton#��[ 