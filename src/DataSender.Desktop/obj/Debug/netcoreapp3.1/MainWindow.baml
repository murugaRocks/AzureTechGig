   M S B A M L   `   `   `  ����H  DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5      M IDataSender.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DataSender.DesktopDataSender.Desktop 5      #   DataSender.Desktop.MainWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:DataSender.Desktop     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5        � Title$  
MainWindow��5	      $	��320��5
      $	��480��5       � WindowStartupLocation$ CenterScreen=�5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Type of protein��6   $��1��6*   $��15(�67   $��Italic$�6E   $
��Bold"�6X   �� 5   
   -   5        $��NameTextbox��5      $��2��5      $��10q�5      *   $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Typeofprotein��5      $��HormonalProtein��5      �� 5   
   $��Value��6   $��2��6    $��15(�6-   $��Italic$�6;   $
��Bold"�6N   $��	0,44,0,78q�6`   $��3��6s   *   $MahApps.Metro.Controls.NumericUpDown  5    
   -   5        $��DescriptionTextbox��5!      $��4��5"      $��	5,10,5,40q�5#         NumericInputMode$ Decimal=�5$      $ value��5%         Value 705&      �� 5'   
   $	��Age��6   $��4��6   $��15(�6+   $��Italic$�69   $
��Bold"�6L   $��	0,59,0,17q�6^   $��2��6q     5(   
   -   5        $��PriceNumeric��5)      $��5��5*      $��	5,18,5,86q�5+      $ Decimal=�5,      $	 Age��5-       615.      �� 5/   
   -   5        $��
SendButton��50      $��5��51      $��	2,78,2,29q�52      $
��Send��53         AccentedSquareButtonStyle#��[  55      56      57      