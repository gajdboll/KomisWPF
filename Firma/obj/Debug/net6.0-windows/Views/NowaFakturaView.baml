   M S B A M L   `   `   `  ����@  <Komis, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Komis.ViewsKomis.Views  5      !    Komis.Views.NowaFakturaView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:Komis.Views     5        � 	Resources  5	       �� Source�� 5
   
   $"  StyleZakladekResources.xaml?�6   %    .��5      � ���#53565B � IsSharedSizeScope$
 True��6     � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $	��200 �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   9� $��Ogolne��6    9� 
IsExpanded$
 True��6#   
�������$��Oblique$�6N   .��5      �  � ColumnDefinitions 5      �� 5      $	��120 �6'   �� 5      $	��100 �6'   �� 5      $	��120 �6'   �� 5      $	��250 �6'   �� 5      $	��100 �6'   �� 5      $	��350 �6'    5      �� 5       $��50 �6$   .+�5"      �� $��0��6   $��0��6%   $�� Data��65   $��Right=�6E      LabelStandardowy#��[  6a   �� 5#      $��0��6   $��1��6(     ComboBoxStandardowy#��[ 68   �� 5$      $��0��6   $��2��6%   $��Right=�65   $��Magazyn��6Q   #��[  6c   �� 5%      $��0��6   $��3��6(   #��[ 68   �� 5&      $��0��6   $��4��6%   $��
Kontrahent��65   $��Right=�6J   #��[  6f   �� 5'      $��0��6   $��5��6(   #��[ 68   5)      5*      9� 5+   
   $��1��6   $��Pozycje��6    $
 True��61   
�������$��Oblique$�6\   .��5-      �  5.      �� 5/      $
��1180 �6'   .+�51      &   System.Windows.Controls.DataGrid     Columns 52      4  .System.Windows.Controls.DataGridComboBoxColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$ Lp��61      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6=   0  *System.Windows.Controls.DataGridTextColumn  54      $ Towar��6-   $	 150 6=     55      $ Ilosc��6-   $	 130 6=     56      $
 Cena��6-   $	 130 6<   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6H   �� 
 �� Path$

 Cena� �� StringFormat$ C��  57      $ Rabat��6-   $	 120 6=   	 6I   �� $
 Rabat�$ C��  58      $ Cena po rabacie��6-   $	 130 6G   	 6S   �� $
 CenaPoRabacie�$ C��  59      $ Wartosc��6-   $	 130 6?   	 6K   �� $
 Wartosc�$ C��  5:      $ St. VAT��6-   $ 70 6?   5<      5=      5>      9� 5?   
   $��2��6   $��	 Wartosci��6    $
 True��63   
�������$��Oblique$�6^   .��5@      �  5A      �� 5B      $��30 �6$   �� 5C      $��30 �6$    5F      �� 5G      $
��Auto �6'   �� 5H      $	��100 �6'   �� 5I      $
��Auto �6'   �� 5J      $	��100 �6'   �� 5K      $
��Auto �6'   �� 5L      $	��100 �6'   �� 5M      $
��Auto �6'   �� 5N      $	��560 �6'   .+�5Q      �� $��0��6   $��0��6&   $��	Dostepne:��66   $
��Left=�6J     Label Standardowy2#��[ 6e   �� 5R      $��0��6   $��1��6'     TextBoxFirma#��[ 67   �� 5S      $��0��6   $��2��6%   $��Rabat %:��65   $
��Left=�6I   #��[ 6d   �� 5T      $��0��6   $��3��6'   #��[ 67   �� 5U      $��0��6   $��4��6%   $��Netto:��65   $
��Left=�6G   #��[ 6b   �� 5V      $��0��6   $��5��6'   #��[ 67   �� 5W      $��1��6   $��0��6%   $��Po terminie:��65   $
��Left=�6M   #��[ 6h   �� 5X      $��1��6   $��1��6'   #��[ 67   �� 5Y      $��1��6   $��2��6%   $��Kwota rabatu:��65   $
��Left=�6N   #��[ 6i   �� 5Z      $��1��6   $��3��6'   #��[ 67   �� 5[      $��1��6   $��4��6%   $
��VAT:��65   $
��Left=�6E   #��[ 6`   �� 5\      $��1��6   $��5��6'   #��[ 67   �� 5]      $��1��6   $��6��6%   $��Wartosc:��65   $
��Left=�6I   $��Center=�6d   #��[ 6   �� 5^      $��1��6   $��7��6'   #��[ 67   5_      5a      9� 5c   
   $��3��6   $��Pierwsza Platnosc��6    $
 True��6;   
�������$��Oblique$�6f   .��5e      �  5f      �� 5g      $��60 �6$   �� 5h      $��60 �6$    5k      �� 5l      $
��Auto �6'   �� 5m      $	��100 �6'   �� 5n      $	��150 �6'   �� 5o      $
��Auto �6'   �� 5p      $��50 �6'   �� 5q      $
��Auto �6'   �� 5r      $	��100 �6'   �� 5s      $��70 �6'   �� 5t      $	��300 �6'   �� 5u      $��70 �6'   �� 5v      $	��100 �6'   .+�5z      �� $��0��6   $��0��6%   $��Forma:��65   $
��Left=�6F   #��[ 6a   �� 5{      $��0��6   $��1��6)     ComboBoxFirma#��[ 69   �� 5|      $��0��6   $��2��6(   #��[ 68   �� 5}      $��0��6   $��3��6%   $��Termin (dni):��65   $
��Left=�6N   #��[ 6i   �� 5~      $��0��6   $��4��6'   #��[ 67   �� 5      $��0��6   $��5��6%   $��Termin:��65   $
��Left=�6H   #��[ 6c   �� 5�      $��0��6   $��6��6(   #��[ 68   �� 5�      $��0��6   $��7��6%   $��Raty:��65   $
��Left=�6F   #��[ 6a   �� 5�      $��0��6   $��8��6'   #��[ 67   �� 5�      $��0��6   $��9��6%   $��Kwota:��65   $
��Left=�6G   #��[ 6b   �� 5�      $��0��6   $��10��6'   $��0.00 PLN��68   $	��100��6I   #��[ 6U   �� 5�      $��1��6   $��9��6&   $��2��66   $��Right=�6J     ButtonStandardowy#��[ 6f     5�       �� 
TargetType �� Property �� Value��%^   '��       �� 5�      " ��6    .�5�      ��  �@��CornerRadius$ 5��6=   5�      5�      .��5�      ��  �� Orientation$ 
Horizontal=�6!   .+�5�      �� $ ��/Views/Icons/dodawanie.png��6    $��15��6D   $
��Left=�6O   $��Center=�6j   �� 5�      $	��5,0q�6$   Dodaj Fakture6@   5�      5�      5�      5�      5�      5�      