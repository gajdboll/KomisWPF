   M S B A M L   `   `   `  ����@  <Komis, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Komis.ViewsKomis.Views  5      $    Komis.Views.NowyKontrahentView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Komis.Views     5        � 	Resources  5	       �� Source�� 5
   
   $"  StyleZakladekResources.xaml?�6   %    .��5      � ���#53565B � IsSharedSizeScope$
 True��6     � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $	��100 �6   .+�5   
   9� $��Dane indentyfikacyjne��6   $��0��62    9� 
IsExpanded$
 True��6?   
�������$��Oblique$�6j   .��5      �  5      �� 5      $
��auto �6$   �� 5      $
��auto �6$    � ColumnDefinitions 5      �� 5      $
��auto �6'    z� SharedSizeGroup$ 
LabelGroup��64   �� 5      $	��250 �6'   �� 5      $	��150 �6'   �� 5      $	��250 �6'   �� 5      $	��200 �6'   .+�5!      �� $��0��6   $��0��6%   $
��Kod:��65      ControlSzerokosc150#��[  6D   �� 5"      $��0��6   $��1��6'   #��[  67   �� 5#      $��0��6   $��2��6%   $��EU VAT/NIP:��65   #��[  6K   �� 5$      $��0��6   $��3��6'   $��2��67     TextBoxDuzy#��[ 6K   �� 5%      $��1��6   $��0��6%   $��Nazwa:��65   #��[  6F   �� 5&      $��1��6   $��1��6'   $��4��67   #��[ 6K   5'      5(      9� 5)   
   $��Podmiot��6   $��1��6$   $
 True��61   
�������$��Oblique$�6]   .��5*      �  5+      �� 5,      $
��auto �6$   �� 5-      $
��auto �6$   �� 5.      $
��auto �6$   �� 5/      $
��auto �6$   �� 50      $
��auto �6$    52      �� 53      $
��auto �6'   �� 54      $
��auto �6'   �� 55      $
��auto �6'   �� 56      $
��auto �6'   .+�58      �� $��0��6   $��0��6%   $��Podatnik VAT:��65     	DarkLabel#��[ 6M   �� 59      $��0��6   $��1��6(   $	��Tak��68   
�������6G   �� 5:      $��0��6   $��2��6%   $��Status:��65   #��[ 6G   �� 5;      $��0��6   $��3��6(   #��[  68   �� 5=      $��1��6   $��0��6%   $ ��Rodzaj VAT dla sprzedaży:��65   #��[ 6Y   �� 5>      $��1��6   $��1��6(   #��[  68   �� 5?      $��1��6   $��2��6%   $��Forma prawna:��65   #��[ 6M   �� 5@      $��1��6   $��3��6(   #��[  68   �� 5A      $��2��6   $��0��6%   $��Rodzaj VAT dla zakupu::��65   #��[ 6W   �� 5B      $��2��6   $��1��6(   #��[  68   �� 5C      $��2��6   $��2��6%   $��VAT liczony od:��65   #��[ 6O   �� 5D      $��2��6   $��3��6(   #��[  68   �� 5E      $��3��6   $��0��6%   $��Status w bazie MF:��65   #��[ 6R   �� 5F      $��3��6   $��1��6(   #��[  68   �� 5G      $��3��6   $��2��6%   $��Status w bazie VIES:��65   #��[ 6T   �� 5H      $��3��6   $��3��6(   #��[  68   �� 5I      $��4��6   $��2��6%   $��	Oddział:��65   #��[ 6H   �� 5J      $��4��6   $��3��6(   #��[  68   5K      5L      9� 5M   
   $��Adres��6   $
 True��6"   $��2��64   
�������$��Oblique$�6Z   .��5N      �  5O      �� 5P      $
��auto �6$   �� 5Q      $
��auto �6$   �� 5R      $
��auto �6$   �� 5S      $
��auto �6$   �� 5T      $
��auto �6$   �� 5U      $
��auto �6$   �� 5V      $
��auto �6$   �� 5W      $
��auto �6$   �� 5X      $
��auto �6$   �� 5Y      $
��auto �6$    5[      �� 5\      $
��auto �6'   $ 
LabelGroup��64   �� 5]      $
��auto �6'   �� 5^      $
��auto �6'   �� 5_      $
��auto �6'   .+�5a      �� $��0��6   $��0��6%   $��Ulica:��65   #��[ 6F   �� 5b      $��0��6   $��1��6'   #��[  67   � 5c      $��0��6   $��2��6$   $��4��64    5d      �� 5e      $	��150 �6+   �� 5f      $	��160 �6+   �� 5g      $	��200 �6+   �� 5h      $	��200 �6+    5j      �� 5k      $
��auto �6(   .+�5m      �� $��0��6   $��0��6)   $��Nr Domu:��69   #��[ 6L   �� 5n      $��0��6   $��1��6+   #��[  6;   �� 5o      $��0��6   $��2��6)   $��
Nr Lokalu:��69   #��[ 6N   �� 5p      $��0��6   $��3��6+   #��[  6;   5q      �� 5r      $��1��6   $��0��6%   $��Kod Pocztowy:��65   #��[ 6M   �� 5s      $��1��6   $��1��6'   #��[  67   �� 5t      $��2��6   $��2��6%   $��Miejscowość:��65   #��[ 6L   �� 5u      $��2��6   $��3��6(   $��3��68     ComboBoxKontrahent#��[ 6L   �� 5v      $��2��6   $��0��6%   $��Poczta:��65   #��[ 6G   �� 5w      $��2��6   $��1��6(   #��[  68   �� 5x      $��3��6   $��0��6%   $��Gmina:��65   #��[ 6F   �� 5y      $��3��6   $��1��6(   #��[  68   �� 5z      $��3��6   $��2��6%   $��Powiat:��65   #��[ 6G   �� 5{      $��3��6   $��3��6(   $��3��68   #��[ 6L   �� 5|      $��4��6   $��0��6%   $��Województwo:��65   #��[ 6L   �� 5}      $��4��6   $��1��6(     ComboBoxStandardowy#��[ 68   �� 5~      $��4��6   $��2��6%   $
��Kraj��65   #��[ 6D   �� 5      $��4��6   $��3��6(   #��[  68   �� 5�      $��4��6   $��4��6(   $��2��68   #��[ 6L   �� 5�      $��5��6   $��0��6%   $��Nr telefonu:��65   #��[ 6L   �� 5�      $��5��6   $��1��6'   #��[  67   �� 5�      $��5��6   $��2��6%   $��	Nr faksu:��65   #��[ 6I   �� 5�      $��5��6   $��3��6'   #��[  67   �� 5�      $��6��6   $��0��6%   $��Nietypowa lokalizacja:��65   #��[ 6V   �� 5�      $��6��6   $��1��6'   #��[  67   �� 5�      $��7��6   $��2��6%   $��PESEL:��65   #��[ 6F   �� 5�      $��7��6   $��3��6'   #��[  67   �� 5�      $��7��6   $��0��6%   $��REGON:��65   #��[ 6F   �� 5�      $��7��6   $��1��6'   #��[  67   �� 5�      $��8��6   $��2��6%   $
��KRS:��65   #��[ 6D   �� 5�      $��8��6   $��3��6'   #��[  67   �� 5�      $��8��6   $��0��6%   $��GLN/ILN:��65   #��[ 6H   �� 5�      $��8��6   $��1��6'   #��[  67   5�      5�      � 5�   
   $��3��6   $��2��6    5�      �� 5�      $
��1030 �6#   �� 5�      $
��auto �6#   .+�5�      �� $	��100��6   .+�5�      ��   ButtonStandardowy2#��[ 6   .��6F   Zapisz  5�       �� 
TargetType �� Property	 �� Value��%^   '��       �� 5�      " ��6    .�5�      ��  �@��CornerRadius$	 5��6=   5�      5�      5�      5�      5�      5�      5�      