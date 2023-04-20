using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Atenas_Gym.View
{
    /// <summary>
    /// Lógica de interacción para LoginView.xaml
    /// </summary>
    public partial class LoginView : Window
    {
        public LoginView()
        {
            InitializeComponent();
        }
        
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
                DragMove();
        }

        private void Minimize_click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Close_click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Cedula_GotFocus(object sender, RoutedEventArgs e)
        {
            if (Cedula.Text == "Ingrese su cédula")
            {
                Cedula.Text = "";
                Cedula.Foreground = Brushes.LightGray;
            }
        }

        private void Cedula_LostFocus(object sender, RoutedEventArgs e)
        {
            if (Cedula.Text == "")
            {
                Cedula.Text = "Ingrese su cédula";
                Cedula.Foreground = Brushes.Gray;
            }
        }

        private void Pass_change(object sender, RoutedEventArgs e)
        {
            if(Pass.Password.Length > 0)
            {
                Watermark.Text = "";
                Pass.Foreground = Brushes.LightGray;
            }
            else
            {
                Watermark.Text = "Ingrese su contraseña";
            }
        }
    }
}
