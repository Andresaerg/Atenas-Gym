   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  E'clr-namespace:Atenas_Gym.CustomControlsAtenas_Gym.CustomControls      Atenas_Gym.View.LoginView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Atenas_Gym.View     8	viewModel"clr-namespace:Atenas_Gym.ViewModel     Bcustomcontrols'clr-namespace:Atenas_Gym.CustomControls     -     � Title$  Atenas Gym | Login��$	��550��$	��800�� � Icon$ /Images/App-Logo.png�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�
������  � AllowsTransparency$
 True�� +� FocusedElement ��  �� ElementName$ Cedula�� � DataContext )   #Atenas_Gym.ViewModel.LoginViewModel  	 � 	Resources	    BooleanToVisibility��%   &	        �� y��� 
 �� Path$
 IsViewVisible� �� Mode$ TwoWay=� �� 	Converter# [  .����  �� CornerRadius$ 15������  �� ImageSource$" /Images/Spartan-bg-edit2.jpg�� j� Stretch$ UniformToFill=� j� 
AlignmentX$ Center=�._��� $ 10��$��5q� J� Opacity$	 .95Q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���   borderColor1 � Color# [  � Offset$ 0Q��   borderColor2# [ $
 0.75Q��   borderColor3# [ $ 1Q����� $	 0,1&�$	 1,0&�.���   primaryBackColor1# [ $ 0Q��   primaryBackColor2# [ $
 0.75Q�._��  � RowDefinitions �� $��30 ��� .+��  � ColumnDefinitions �� �� $��40 ��� $��40 ��� $��0 �.+��� $�� ��
���  ��$��15(�$��
Montserrat)�$��0��$��Center=�$��35,0,0,0q��� -    ��Name$ Minimize��$��0q�$��1��$��25(�$��-��
�������$��
Montserrat)� � Cursor$
 Hand������  �� 
TargetType" ��.R��� #��z��._��� $��Center=�$��Center=�����  �� 
TargetType" ��.���  �� Property � �� �� Value
 ����  �� Triggers P�  P� Property �@J�IsMouseOver  P� Value$
  True��. ���  � �� �#2D2D2D�� -   $ Close��$��0q�$��20(�$��x��$��2��
�������$��
Montserrat)�$
 Hand������ " ��.R��� #��z��$ 0,5,0,0��._��� $��Center=�$��Center=����� " ��.���  � ��
 ����  P�  �@J�IsMouseOver$
  True��. ���  � ��
 �  ���� $	��250��$��2��! �� Orientation$! Vertical=�$��0,10,0,0q�.+��� $��/Images/Logo.png��$	��200��$	��200���� $��Usuario��$
��Left=�$��25��$��0, 25, 0, 0q����#EAEAEA$��
Montserrat)�$��12(�$��Medium"��� -   " ��Name$" Cedula��# �� 	MaxLength$# 10��$��Stretch=�
�������$��0,0,0,2q�$ �� 
CaretBrush
$ �����$��Medium"�$��
Montserrat)�$��0,5,0,0q�$��30,0,0,0q�
�������$��20��$
��Left=�$	��Top=�$% �� HorizontalScrollBarVisibility$% Disabled=����� *
Username+& �� UpdateSourceTrigger$& PropertyChanged=�.������ " ��.���  � �� �� " ��.R��� $��border��' �� Padding#' z��#��z��#��z��#��z��( J� SnapsToDevicePixels$
( True��._��� $��PART_ContentHost��$��Hidden=�$��Hidden=�$|�False��) �� Triggers) P�  �@J�IsMouseOver$
  True��. ��� * �� 
TargetName$* border�� � ��
 �  ��P�  �@J�	IsFocused$
  True��. ��� $* border�� � ��
 �  ��.������ $ /Images/user-icon.png��$
 none=�$
 Left=�.���� -   + ��Name$+ WatermarkCI��$��Ingrese su cédula��$��
35,-20,0,0q�
�������$��Medium"�$��
Montserrat)�, K� ZIndex$, -1���� $��Contraseña��$
��Left=�$��25��$��0, 25, 0, 0q����#EAEAEA$��
Montserrat)�$��12(�$��Medium"�3   -Atenas_Gym.CustomControls.BindablePasswordBox  -   -  Name$
- Pass��$��0,5,0,0q�$��20��.   Password. �� *
Password+$ TwoWay=�$& PropertyChanged=��� -   $+ ErrorMessage��$��0,5,0,0q�
���  ��$��Medium"�$��
Montserrat)�$, -1��$
��Wrap=����� *ErrorMessage+$ OneWay=��� -   $ Login��$��0q�$��15(�$��25��$��Iniciar Sesión��$��
Montserrat)�$
 Hand��$��20 10q�/ �� 	IsDefault$
/ True������ *LoginCommand+���� " ��.���  � �� �#5D5D5D��  � ��
 ����� P�  �@J�IsMouseOver$
  True��. ���  � ��
 �  ������ " ��.R��� $ 10��#��z��._��� $��Center=�$��Center=��� -	   $ Create_user��$��Crear nuevo usuario��
������ $��0q�$
��Bold"����#F5F2F2$��0,0,0,5q�$	��250��  controlButton#��[ �� -
   $+ Forgot_pass��$��Olvidé mi contraseña��$��Normal"����#F5F2F20 �� TextAlignment$0 Center=�$
 Hand��