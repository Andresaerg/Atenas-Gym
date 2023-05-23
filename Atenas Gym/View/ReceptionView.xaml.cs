using AForge.Video.DirectShow;
using AForge.Video;
using Atenas_Gym.ViewModel;
using MaterialDesignThemes.Wpf;
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
using System.Drawing;
using System.IO;
using System.Drawing.Imaging;

namespace Atenas_Gym.View
{
    /// <summary>
    /// Lógica de interacción para ReceptionView.xaml
    /// </summary>
    public partial class ReceptionView : UserControl
    {
        private bool _hayDispositivos;
        private FilterInfoCollection misDispositivos;
        private VideoCaptureDevice miWebCam;
        private string Path = @"\Images\clients\";
        private Random rand = new Random();
        public ReceptionView()
        {
            InitializeComponent();
            ReceptionViewModel vm = new ReceptionViewModel();
            DataContext = vm;
            CargaDispositivos();
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

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Testing.IsOpen = true;
        }

        private void Create_Client(object sender, RoutedEventArgs e)
        {
            Create.Visibility = Visibility.Visible;
            Renew.Visibility = Visibility.Collapsed;

            ClientSendingName.Clear();
            PlanComboBox.SelectedIndex = 0;
            Payment_Method.SelectedIndex = 0;
            ReferenciaCreate.Clear();
        }

        private void Renew_Client(object sender, RoutedEventArgs e)
        {
            Renew.Visibility = Visibility.Visible;
            Create.Visibility = Visibility.Collapsed;

            PlanComboBox2.SelectedIndex = 0;
            Payment_Method2.SelectedIndex = 0;
            ReferenciaRenew.Clear();
        }

        private void Hide_Options(object sender, RoutedEventArgs e)
        {
            Renew.Visibility = Visibility.Collapsed;
            Create.Visibility = Visibility.Collapsed;
        }

        private void RenewBtn(object sender, RoutedEventArgs e)
        {
            Renew.Visibility = Visibility.Collapsed;
        }

        private void CreateBtn(object sender, RoutedEventArgs e)
        {
            Create.Visibility = Visibility.Collapsed;
        }

        private void CargaDispositivos()
        {
            misDispositivos = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            List<string> testing = new List<string>();
            if (misDispositivos.Count > 0)
            {
                _hayDispositivos = true;
                for (int i = 0; i < misDispositivos.Count; i++)
                {
                    ComboTest.Text = misDispositivos[0].ToString();
                    ComboTest.Items.Add(misDispositivos[i].Name.ToString());
                }
            }
            else
            {
                _hayDispositivos = false;
            }
        }

        private void CerrarWebCam()
        {
            if (miWebCam != null && miWebCam.IsRunning)
            {
                miWebCam.SignalToStop();
                miWebCam = null;
            }
        }

        private void ExecuteOpenWebCam(object sender, EventArgs e)
        {
            CerrarWebCam();
            int i = 2;
            string NombreVideo = misDispositivos[i].MonikerString;
            miWebCam = new VideoCaptureDevice(NombreVideo);
            miWebCam.NewFrame += new NewFrameEventHandler(Capturando);
            miWebCam.Start();
        }

        private void Capturando(object sender, NewFrameEventArgs eventArgs)
        {
            Bitmap Imagen = (Bitmap)eventArgs.Frame.Clone();
            myImage.Dispatcher.Invoke(() =>
            {
                myImage.Source = BitmapToImageSource(Imagen);
            });
        }

        public static BitmapImage BitmapToImageSource(Bitmap bitmap)
        {
            using (System.IO.MemoryStream memory = new System.IO.MemoryStream())
            {
                bitmap.Save(memory, System.Drawing.Imaging.ImageFormat.Bmp);
                memory.Position = 0;
                BitmapImage bitmapimage = new BitmapImage();
                bitmapimage.BeginInit();
                bitmapimage.StreamSource = memory;
                bitmapimage.CacheOption = BitmapCacheOption.OnLoad;
                bitmapimage.EndInit();

                return bitmapimage;
            }
        }

        private void CaptureImage(object sender, EventArgs eventArgs)
        {
            if(miWebCam != null && miWebCam.IsRunning)
            {
                miWebCam.SignalToStop();
                miWebCam = null;

                DateTime now = DateTime.Now;
                string date = now.ToString("ddMMyyyy");
                string ruta = Path + "ClientImage_" + rand.Next(0,15000) + ".jpg";

                //Save document
                using (FileStream stream = new FileStream(ruta, FileMode.Create))
                {
                    PngBitmapEncoder encoder = new PngBitmapEncoder();
                    encoder.Frames.Add(BitmapFrame.Create((BitmapSource)myImage.Source));
                    encoder.Save(stream);
                    Ruta.Text = ruta;
                }
            }
        }
    }
}
