   M S B A M L   `   `   `  ���� E  AAtenas Gym, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Atenas_Gym.ViewAtenas_Gym.View  ;"clr-namespace:Atenas_Gym.ViewModelAtenas_Gym.ViewModel  E'clr-namespace:Atenas_Gym.CustomControlsAtenas_Gym.CustomControls  #    Atenas_Gym.View.ReceptionView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:Atenas_Gym.View     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  X TFontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10fFfa=http://schemas.awesome.incremented/wpf/xaml/fontawesome.sharp  2	viewModel"clr-namespace:Atenas_Gym.ViewModel  4custom'clr-namespace:Atenas_Gym.CustomControls    � 	Resources  4   .Atenas_Gym.CustomControls.PlanToPriceConverter   PlanToPriceConverter��%   &	          .���  � ColumnDefinitions �� $��* ��� $��* � � RowDefinitions �� $��* ��� $��5* �.+�)  #MaterialDesignThemes.Wpf.DialogHost  -     Name$ Testing��$��2��$��2�� K� ZIndex$ 0��   DialogContent � $	��800��$	��400�����#343434 �� $��50 ��� $��* ��� $��50 �.+��� $��0��$��Stretch=�$��Center=�$��0,0,0,2q�  principalForeground#��[ ._��� $��15q�  secondaryForeground#��[ $��18(�$��
Montserrat)����� *
ClientName+ �� UpdateSourceTrigger$ PropertyChanged=� �� StringFormat$ Datos para {0}��� $��1��$��Center=�$	��Top=�$��	0,20,0,20q� �� $��* ��� $��* ��� $��* ��� $��* � �� $��* ��� $��* ��� $��* ��� $��* ��� $��* �����  �� 
TargetType" �	 �� 	Resources	 
 �� Property �� Value��%a   '��       7  �� " ��.��� 
 � ��$ 18(��� 
 � ��$ 
Montserrat)��� 
 � ��8   .+��� $��0��$��4��$��Datos del cliente��$��Center=�$
��Bold"�$��0,0,0,20q��� $��0��$��1��$��Nombre: ���� $��1��$��1������ *
ClientName+$ PropertyChanged=��� $��2��$��1��$��	100,0,0,0q�$��	Cédula: ���� $��3��$��1������ *
ClientCI+$ PropertyChanged=��� $��0��$��2��$��
Ingresó: ���� $��1��$��2������ *ClientRegisterDate+$ PropertyChanged=��� $��2��$��2��$��	100,0,0,0q�$��Pagó: ���� $��3��$��2������ *ClientPaymentDate+$ PropertyChanged=��� $��0��$��3��$��Estado: ���� $��1��$��3������ *ClientStatusText+$ PropertyChanged=��� $��2��$��3��$��	100,0,0,0q�$��Expira: ���� $��3��$��3������ *ClientPaymentExpireDate+$ PropertyChanged=��� $��4��$��0��$��4��$'��!Entrenador: NOMBRE DEL ENTRENADOR��� $��1��$��Center=�$��Bottom=�$��	0,60,0,20q� �� $��* ��� $��* ��� $��* ��� $��* � �� $��* ��� $��* ��� $��* ��� $��* ����� " �	 ��%a   '��       7  �� " ��.��� 
 � ��$ 18(��� 
 � ��$ 
Montserrat)��� 
 � ��8   .+��� $��0��$��4��$��Medidas antropométricas��$��Center=�$
��Bold"�$��0,0,0,20q��� $��0��$��1��$��Brazos: ���� $��1��$��1��$��MEDIDAS DE BRAZOS���� $��2��$��1��$��	100,0,0,0q�$��	Piernas: ���� $��3��$��1��$��MEDIDAS DE PIERNAS���� $��0��$��2��$��	Cintura: ���� $��1��$��2��$��MEDIDA DE CINTURA���� $��2��$��2��$��	100,0,0,0q�$��	Caderas: ���� $��3��$��2��$��MEDIDAS DE CADERAS���� $��0��$��3��$��Pecho: ���� $��1��$��3��$��MEDIDA DE PECHO���� $��2��$��3��$��	100,0,0,0q�$��	Hombros: ���� $��3��$��3��$��MEDIDAS DEL HOMBRO���� $��2��$��0,2,0,0q�#��[ ._��� $��Salir��   CloseDialogCommand#��Z $��Right=�$��Center=�$��Center=�$��Center=�  commonButton#��[ $��75��$��25��$��15q�� $��0��$��0�� �� $	��.3* ��� $��* ��� $
��.25* �.+��� $��Cliente ID:��#��[ $��0��$��Center=�$��Center=�$��
Montserrat)�$��14(��� -   $��20��$��20��$��1��$��Right=�$��0,0,10,5q� �� 	IsDefault$
 True��$ 99������ *SearchClient+���� " ��.��� 
 � ��
 ���� �� 
 � ��
 ����  �� Triggers P�  P� Property �@J�IsMouseOver P� Value$
 True��. ��� 
 � ��
 ���� ����  �� 
TargetType" ��.R���  �� CornerRadius$ 10��#��z��._��� $��Center=�$��Center=�.��!  FontAwesome.Sharp.IconImage  �  �FontAwesome.Sharp.IconImageBase`1[[FontAwesome.Sharp.IconChar, FontAwesome.Sharp, Version=6.3.0.0, Culture=neutral, PublicKeyToken=d16d1e4e568ec10f]]   Icon$ Search=�   
Foreground# [ $��15��$��15��$��1��$��Center=�$��Center=��� -    ��Name$ Cedula��  	myTextBox#���   �� 	MaxLength$ 10��$��Stretch=�
�������$��0,0,0,2q� �� 
CaretBrush
 �����$��Medium"�$��
Montserrat)�$��14(�$��0,0,0,0q�
�������$��20��$
��Left=�$	��Top=�$ �� HorizontalScrollBarVisibility$ Disabled=�$��1������ *
ClientID+$ PropertyChanged=�.���� -    ��Name$ WatermarkCI��$��Ingrese la cédula��$��10,0,0,0q�
�������$��Medium"�$��
Montserrat)�$��14(�$ -1��$��20��$��1��$��2��� $��1��$��0�� �� $��* ��� $��1.25* � �� $��* ��� $
��1.5* �.+��� $��0��$��0�� �� Padding$ 5q�$��5q����� *ClientStatus+._��� -   $��myImage��$��UniformToFill=����� *ClientImage+$ PropertyChanged=�� $��1��$��2�� �� $��25 ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��* � �� $��20 ��� $��* ��� $	��.7* �.+�� $��0��$��1��$��2������ *ClientStatus+.+�(� .���� -   $ 
clientName��$��
Montserrat)�#��[ $��	Underline{����� *
ClientName+(� $��2��$��1��$
��Left=�$	��Top=�.���� $��Cédula:��$
��Auto��$��
Montserrat)�$��16(�#��[ y��� *ItemsVisibility1+(� $��2��$��2��$
��Left=�$	��Top=�.���� $
��Auto��$��
Montserrat)�$��16(�#��[ ���� *
ClientCI+$ PropertyChanged=�(� $��3��$��1��$
��Left=�$	��Top=�.���� $��Ingreso:��$
��Auto��$��
Montserrat)�$��16(�#��[ y��� *ItemsVisibility1+(� $��3��$��2��$
��Left=�$	��Top=�.���� $
��Auto��$��
Montserrat)�$��16(�#��[ ���� *ClientRegisterDate+$ PropertyChanged=�(� $��4��$��1��$
��Left=�$	��Top=�.���� $��Pago:��$
��Auto��$��
Montserrat)�$��16(�#��[ y��� *ItemsVisibility1+(� $��4��$��2��$
��Left=�$	��Top=�.���� $
��Auto��$��
Montserrat)�$��16(�#��[ ���� *ClientPaymentDate+$ PropertyChanged=�(� $��5��$��1��$
��Left=�$	��Top=�.���� $��Vencimiento:��$
��Auto��$��
Montserrat)�$��16(�#��[ y��� *ItemsVisibility1+(� $��5��$��2��$
��Left=�$	��Top=�.���� $
��Auto��$��
Montserrat)�$��16(�#��[ ���� *ClientPaymentExpireDate+$ PropertyChanged=�(� $��6��$��1��$
��Left=�.���� $��Estado:��$
��Auto��$��
Montserrat)�$��16(�#��[ y��� *ItemsVisibility1+(� $��6��$��2��$
��Left=�$	��Top=�.���� -   $ clientStatus��$
��Auto��$��
Montserrat)�$��16(�#��[ ���� *ClientStatusText+$ PropertyChanged=��� $��6��$��2��$��1��$��2��$	��Top=�$��Stretch=�$��0,35,0,0q�.+��� -   $��Ver detalles��$
��Auto��$��
Montserrat)�$��14(�$��5q�#��[ $��0,0,0,5q�y��� *
DetailsBtn+�� -	   $��Nuevo usuario��$
��Auto��$��
Montserrat)�$��14(�$��5q�#��[ $��0,0,0,5q�y��� *	CreateBtn+�� -
   $��Renovar��$
��Auto��$��
Montserrat)�$��14(�$��5q�#��[ y��� *	UpdateBtn+�� -   $��CapturarImg��$��Capturar��$��Right=�$��0,10,0,0q�$��1��$	��Top=�$��80��$y�	Collapsed=����� *CaptureImage+�� -   $��OpenCam��$��Camara��$
��Left=�$��0,10,0,0q�$��1��$	��Top=�$��80��$y�	Collapsed=����� *
OpenWebCam+�� $��1��$��1��$
��30,0q�.+��� -    ��Name$ Create��$y�	Collapsed=� �� Orientation$ Vertical=�$��Stretch=�$
��50,0q�.+�� $��Stretch=�$��Stretch=� �� $��* ��� $��20 ��� $��* � �� $��30 ��� $��20 ��� $��20 ��� $��15 ��� $��20 ��� $��20 ��� $��15 ��� $��25 ��� $��15 ��� $��25 ��� $��15 ��� $��20 �.+�(� $��0��$��3��.���� $��Agregar cliente��$��Center=�$	��Top=�$
��Auto��$��
Montserrat)�$��16(�$
��Bold"�#��[ �� -   $ ClientSendingName��#��[ $��
Montserrat)�#��[ $��0q�$��2������ *ClientNameSend+$ PropertyChanged=��� #��[ $��
Montserrat)�#��[ $��0q�$��2��$��2��${�False������ *
ClientID+(� $��4��.���� $��Seleccione un plan:��
�������$��
Montserrat)��� -   $��PlanComboBox��$��
Montserrat)�$��15(� �� SelectedValue$ ID�� �� DisplayMemberPath$
 Plan��$��5����Z� ���� *Planes+ �� SelectedIndex �� *SelectedIndex+(� $��7��$��0��.���� #��[ $��	Montserat)����� *SelectedItem+  �� ElementName$  PlanComboBox��! �� 	Converter#! [  $ Total a pagar: ${0}��(� $��4��$��2��.���� $��Método de pago:��
�������$��
Montserrat)�$��14(��� -   $��Payment_Method��$��
Montserrat)�$��14(�$��5��$��2��" �� SelectedValuePath$" Content����Z�  �� *Payment_Methods+$ PropertyChanged=�.@��� # �� 
IsSelected$
# True��.��
Efectivo�� .��Transferencia bancaria�� .��Pago móvil�� .��Zelle�� -   $��ReferenciaCreate��#��[ $��
Montserrat)�$��14(�
������ $��0,0,0,2q�
���  ��$��7��$��2������ *Referencia_Pago+$ PropertyChanged=��� -   $��Crear cliente��#��[ $��9��$��2������ *CreateClient+�� -   $ Renew��$y�	Collapsed=�$ Vertical=�$��Stretch=�$
��50,0q�.+�� $��Stretch=�$��Stretch=� �� $��* ��� $��20 ��� $��* � �� $��30 ��� $��20 ��� $��20 ��� $��20 ��� $��20 ��� $��25 ��� $��20 ��� $��25 ��� $��20 ��� $��25 �.+�(� $��0��$��3��.���� $��Center=�$	��Top=�$
��Auto��$��
Montserrat)�$��16(�$
��Bold"�#��[ ���� *
ClientName+$ PropertyChanged=�$ Renovar para {0}��(� $��2��.���� $��Seleccione un plan:��
�������$��
Montserrat)��� -   $��PlanComboBox2��$��
Montserrat)�$��15(�$ ID��$
 Plan��$��3����Z� ���� *Planes+ �� *SelectedIndex+(� $��5��$��0��.���� #��[ $��	Montserat)����� *SelectedItem+$  PlanComboBox2��#! [  $ Total a pagar: ${0}��(� $��2��$��2��.���� $��Método de pago:��
�������$��
Montserrat)�$��14(��� -   $��Payment_Method2��$��
Montserrat)�$��14(�$��3��$��2��$" Content����Z�  �� *Payment_Methods+$ PropertyChanged=�.@��� $
# True��.��
Efectivo�� .��Pago móvil�� .��Transferencia bancaria�� .��Zelle�� -   $��ReferenciaRenew��#��[ $��
Montserrat)�$��14(�
������ $��0,0,0,2q�
���  ��$��5��$��2������ *Referencia_Pago+$ PropertyChanged=��� -   $��Renovar cliente��#��[ $��7��$��2������ *UpdateClient+