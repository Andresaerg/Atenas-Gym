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
    /// Lógica de interacción para ReceptionView.xaml
    /// </summary>
    public partial class ReceptionView : UserControl
    {
        public ReceptionView()
        {
            InitializeComponent();
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
    }
}
