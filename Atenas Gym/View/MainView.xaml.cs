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
using System.Runtime.InteropServices;
using System.Windows.Interop;
using Atenas_Gym.Messages;
using CommunityToolkit.Mvvm.Messaging;
using System.Windows.Media.Animation;
using Microsoft.VisualBasic.ApplicationServices;
using Atenas_Gym.ViewModel;
using AForge.Video.DirectShow;
using AForge.Video;

namespace Atenas_Gym.View
{
    /// <summary>
    /// Lógica de interacción para MainView.xaml
    /// </summary>
    public partial class MainView : Window
    {
        private LoginView? loginView;
        public MainView()
        {
            InitializeComponent();
            WeakReferenceMessenger.Default.Register<OpenLoginWindowMessage>(this, OpenLoginWindow);
        }

        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, int wMsg, int wParam, int lParam);
        
        private void pnlControlBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            WindowInteropHelper helper = new WindowInteropHelper(this);
            SendMessage(helper.Handle, 161, 2, 0);
        }

        private void pnlControlBar_MouseEnter(object sender, MouseEventArgs e)
        {
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
        }

        private void Minimize_click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Maximize_click(object sender, RoutedEventArgs e)
        {
            if(this.WindowState == WindowState.Normal)
            {
                WindowState = WindowState.Maximized;
                MaximizeStatus.Icon = FontAwesome.Sharp.IconChar.WindowRestore;
            }
            else
            {
                WindowState = WindowState.Normal;
                MaximizeStatus.Icon = FontAwesome.Sharp.IconChar.Square;
            }
        }

        private void Close_click(object sender, RoutedEventArgs e)
        {
            var activeUserControl = contentControl.Content as UserControl;
            if (activeUserControl != null)
            {
                var viewModel = activeUserControl.DataContext as ReceptionViewModel;
                if (viewModel != null)
                {
                    viewModel.CerrarWebCam();
                }
            }
            //Application.Current.Shutdown();
            Environment.Exit(0);
        }

        private void Contract(object sender, RoutedEventArgs e)
        {
            var chevronIcon = ContractIcon.Icon == FontAwesome.Sharp.IconChar.ChevronLeft;
            if (chevronIcon)
            {
                sideBar.Width = new GridLength(0);
                openBtnIcon.IsEnabled = true;
                openBtnIcon.Visibility = Visibility.Visible;
            }
        }

        private void Open(object sender, RoutedEventArgs e)
        {
            var chevronIcon = OpenIcon.Icon == FontAwesome.Sharp.IconChar.ChevronRight;
            if (chevronIcon)
            {
                sideBar.Width = new GridLength(250);
                openBtnIcon.IsEnabled = false;
                openBtnIcon.Visibility = Visibility.Hidden;
            }
        }

        private void OpenLoginWindow(object recipient, OpenLoginWindowMessage message)
        {
            if(loginView == null)
            {
                loginView = new LoginView();
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (Status.Text == "Guardia")
            {
                dashboardBtn.Visibility = Visibility.Collapsed;
                plansBtn.Visibility = Visibility.Collapsed;
                cutsBtn.Visibility = Visibility.Collapsed;
                trainersBtn.Visibility = Visibility.Collapsed;

                receptionBtn.IsChecked = true;
            }
        }
    }
}