   M S B A M L   `   `   `  ����Q  MCommunicationsShowroom, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:CommunicationsShowroom.View.Window"CommunicationsShowroom.View.Window  5   	   .    (CommunicationsShowroom.View.Autorization   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Blocal0clr-namespace:CommunicationsShowroom.View.Window     5   	     � Icon$  /Image/icon.ico��5   	    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	   '  !System.Windows.Shell.WindowChrome   IsHitTestVisibleInChrome .  � Title$ Авторизация��5   	   $	��500��6   $	��400��6*    � AllowsTransparency . 
������ .��5      ��  �� CornerRadius$ 30��6   ���#ACE1AF._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      ]� $��Stretch=�6   $��Stretch=�5      ��. $��30��5      $��0��5      .+�5      � -   5        $��Right=�5      ���#573595.+�5      �� 	 �� Orientation$	 
Horizontal=�6!   $��Right=�5       $��Center=�5!      $��30��5"      .+�5#      �� $��24(�5$      $��0,0,65,0q�5%      
�������$��Center=�5'      $
��Left=�5(      $��Авторизация��5)      $��Edwardian Script ITC)�6'   $��Italic$�6I   �� 5*      -   5        
 ��Name$
 MinimizeButton��5*   !   -  'System.Windows.Input.KeyboardNavigation   	IsTabStop .  $��20��5,      $��20��5-      ���#47ba44$��4,0,4,0q�50         ButtonStyleAll#���   6&   .��51      �� $��/Image/minimize.png��6%   $��10��6C   $��10��6N   $��Center=�6Z   52      �� 53      -   5        $
 CloseButton��53   !    .  $��20��55      $��20��56      $��4,0,4,0q�57      ���#47ba44#���   59   ,   .��5:      �� $��/Image/close.png��6$   $��10��6>   $��10��6I   $��Center=�6U   5;      5<      5=      5>      �� 5?      $��1��6   $��20q�6&   .+�5@      �� $��5,10,0,0q�5A      $��25(�5B      
���   �$��Логин :��5D      $��Goudy Old Style)�6#   $��Italic$�6@   �� 5E      $ 10��6   $��1q�6+   ���#a4a4a4���#78e397._�5F      �� -   5         ��Name$ loginBox��5H      $��	10,0,10,0q�5I      $��23��5J      ��5G      �� *Login+5J      5L      5M      �� 5N      $��2��6   $��20q�6&   .+�5O      �� $��5,10,0,0q�5P      $��25(�5Q      
���   �$��Пароль :��5S      $��Goudy Old Style)�6$   $��Italic$�6A   �� 5T      $ 10��6   $��1q�6+   ���#a4a4a4���#78e397._�5U      G� -   5        $��pswBox��5V      $��23��5W      $��	10,0,10,0q�5X      5[      5\      �� 5]      $��3��6   $	 
Horizontal=�5^      $��Center=�5`      .+�5b      �� $��
Гость��5c      $��80��5d      $y�Hidden=�5e      $��40��5f      $��20(�5g      ���#58a023$
��Left=�5i      $��10q�5j      #���   6   �� 5l      -   5        $��
Войти��5n      $��80��5o      $��40��5p      $��20(�5q      ���#8c82af$��Right=�5s      $��	210,0,0,0q�5t      #���   6$   $��Italic$�6M   $��Goudy Old Style)�6`   5v      5w      5x      5y      