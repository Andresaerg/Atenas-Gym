using Atenas_Gym.Messages;
using Atenas_Gym.ViewModel;
using CommunityToolkit.Mvvm.Messaging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
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
        private MainView mainView;

        public object originalContent;
        public LoginView()
        {
            InitializeComponent();
            originalContent = Content;
            WeakReferenceMessenger.Default.Register<OpenMainWindowMessage>(this, OpenMainWindow);
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

        private void Create_user_Click(object sender, RoutedEventArgs e)
        {
            CreateAccountView createAccount = new();
            this.Content = createAccount;
        }

        private void OpenMainWindow(object recipient, OpenMainWindowMessage message)
        {
            if(mainView == null)
            {
                mainView = new MainView();
            }
        }
    }
}
