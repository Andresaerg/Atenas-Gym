using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Atenas_Gym.View
{
    /// <summary>
    /// Lógica de interacción para CreateAccountView.xaml
    /// </summary>
    public partial class CreateAccountView : UserControl
    {
        public CreateAccountView()
        {
            InitializeComponent();
        }

        private void Username_change(object sender, RoutedEventArgs e)
        {
            if (Username.Text.Length > 0)
            {
                WatermarkUsername.Text = "";
            }
            else
            {
                WatermarkUsername.Text = "Ingrese su nombre";
            }
        }
        private void Cedula_change(object sender, RoutedEventArgs e)
        {
            if (Cedula.Text.Length > 0)
            {
                WatermarkCI.Text = "";
            }
            else
            {
                WatermarkCI.Text = "Ingrese su cédula";
            }
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void Minimize_click(object sender, RoutedEventArgs e)
        {
            Window window =Window.GetWindow(this);
            window.WindowState = WindowState.Minimized;
        }

        private void Close_click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void BackToLogin_Click(object sender, RoutedEventArgs e)
        {
            LoginView login = (LoginView)Window.GetWindow(this);
            Content = login.originalContent;
        }
    }
}
