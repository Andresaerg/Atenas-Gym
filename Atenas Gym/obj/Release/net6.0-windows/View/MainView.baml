   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel      Atenas_Gym.View.MainView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:Atenas_Gym.View     8	viewModel"clr-namespace:Atenas_Gym.ViewModel     X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp    � Title$  Atenas Gym | Dashboard��$	��700��$
��1200�� � Icon$ /Images/App-Logo.png�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�
������  � AllowsTransparency$
 True�� � DataContext (   "Atenas_Gym.ViewModel.MainViewModel   � 	Resources  �� DataType(   "Atenas_Gym.ViewModel.HomeViewModel   Atenas_Gym.View.HomeView-  'Atenas_Gym.ViewModel.ReceptionViewModel#   Atenas_Gym.View.ReceptionView+   %Atenas_Gym.ViewModel.ClientsViewModel!   Atenas_Gym.View.ClientsView*   $Atenas_Gym.ViewModel.PlanesViewModel 	   Atenas_Gym.View.PlanesView*
   $Atenas_Gym.ViewModel.CortesViewModel    Atenas_Gym.View.CortesView*   $Atenas_Gym.ViewModel.ConfigViewModel    Atenas_Gym.View.ConfigView   BooleanToVisibility��%�   (��       *, +)(��      *, +)(�� $     *, +)(�� 6     *, +)(�� H     *,
 +)(�� Z     *, +)&	  l     �� "  .R�  �� "  .R�  �� "  .R�  �� "  .R�	  �� " 
 .R�  �� "  .R�  �� y���  �� Path$ 	IsVisible�	 �� Mode$	 TwoWay=�
 �� 	Converter#
 [  .����  �� CornerRadius$ 10��$��5q�����  �� 
StartPoint$	 0,0&� �� EndPoint$	 1,1&�.���   borderColor1 � Color# [  � Offset$ 0Q��   borderColor2# [ $
 0.75Q��   borderColor3# [ $ 1Q�._��  � ColumnDefinitions �� -    ��Name$ sideBar��$	��250 ��� $��* �.+��� $ 5.5,0,0,5.5��$��0������ $	 0,0&�$
 1,.7&�.���   secondaryBackColor1# [ $ 0Q��   secondaryBackColor2# [ $ 1Q�._��� -   .+���  �� Orientation$ 
Horizontal=�$��35��$��
15,25,0,40q�.+��� $��/Images/App-Logo.png��$��30���� $��
ATENAS GYM��  secondaryForeground#��[ $��20(�$��Medium"�$��Center=�$��10,0,0,0q��� -   $��30��$��40,0,0,0q�  controlButton#��[ .��!  FontAwesome.Sharp.IconImage  -     Name$ ContractIcon���  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ ChevronLeft=�   
Foreground# [ $��20��	� -    	�Name$ dashboardBtn��  
menuButton#��[ 
 � Tag# [  d� 	IsChecked$
 TrueY����� *ShowHomeViewCommand+.���� $ 
Horizontal=�.+�  $
 Home=� 	 menuButtonIcon#��[	 �� $��	Dashboard�� 
 menuButtonText#��[
 	� -   $ receptionBtn��#��[ # [ ���� *ShowReceptionViewCommand+.���� $ 
Horizontal=�.+�  $ ConciergeBell=�#��[	 �� $��
Recepción��#��[
 	� #��[ # [ ���� *ShowClientsViewCommand+.���� $ 
Horizontal=�.+�  $ PeopleGroup=�#��[	 �� $��Clientes��#��[
 	� -   $ plansBtn��#��[ # [ ���� *ShowPlanesViewCommand+.���� $ 
Horizontal=�.+�  $
 List=�#��[	 �� $��Planes��#��[
 	� -   $ cutsBtn��#��[ # [ ���� *ShowCortesViewCommand+.���� $ 
Horizontal=�.+�  $ Dollar=�#��[	 �� $��Cortes��#��[
 	� -	   $ trainersBtn��#��[ # [ ���� *ShowConfigViewCommand+.���� $ 
Horizontal=�.+�  $ Dumbbell=�#��[	 �� $��Entrenadores��#��[
 	� #��[ # [ ���� *ShowConfigViewCommand+.���� $ 
Horizontal=�.+�  $ Gears=�#��[	 �� $��Configuración��#��[
 	� #��[ # [ ���� *Logout+.���� $ 
Horizontal=�.+�  $ SignOut=�#��[	 �� $��Log out��#��[
 �� $ 0,5.5,5.5,0��$��1������ $	 0,0&�$ 1,1.3&�.���   primaryBackColor1# [ $ 0Q��   primaryBackColor2# [ $ 1Q�._��  � RowDefinitions �� $��25 ��� $��35 ��� $��* �.+�� $��0�� �� �� $��40 ��� $��40 ��� $��40 �.+��� -
    ��Name$ pnlControlBar��$ 
Horizontal=�$��0��$��RightToLeft=�
������ $��0,0,5,0q��� -    ��Name$ Minimize��$��1��#��[ # [ .��  $ WindowMinimize=�$��11��  controlButtonIcon#��[ �� -   $ Maximize��$��2��#��[ # [ .��  -   $ MaximizeStatus��$ Square=�#��[ �� -   $ Close��  controlCloseButton#��[ $��3��# [ .��  $ Xmark=�  controlCloseButtonIcon#��[ � $��1�� �� �� .+��� $ 
Horizontal=�$��0��$��Center=�.+��� -   $ openBtnIcon��$��30��$��0,0,0,0q�${�False��$y�Hidden=�#��[ .��  -   $ OpenIcon��$ ChevronRight=�# [ $��20��  $��20��$��20��# [ $��	35,0,10,0q� �� *Icon+�� #��[ $��
Montserrat)�$��16(�$��Medium"�$��Center=����� *
Breadcrumb+�� $��1��$ 
Horizontal=�$��RightToLeft=�$��Center=�$��0,0,10,0q�.+���   userDataButton#��[ # [ .��  $ 	AngleDown=�$��12��$��12��  userDataButtonIcon#��[ �� $ Vertical=�.+��� -    ��Name$ Status��#��[ $	��Top=�$��
Montserrat)�$��10(����� *CurrentUserAccount.Cargo+�� #��[ $��
Montserrat)�$��12(�$��Center=����� * CurrentUserAccount.DisplayName+A� $��35��$��35��  plainTextColor3#��[ $��2��$��	10,0,10,0q�����  �� ImageSource$ /Images/App-Logo.png���� -   $��contentControl��$��2��$��25q����� *CurrentChildView+