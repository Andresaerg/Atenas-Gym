﻿#pragma checksum "..\..\..\..\View\ReceptionView.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "C3F1B4539A8F227EBA90DCB84B4D4242F1488AD0"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using Atenas_Gym.CustomControls;
using Atenas_Gym.View;
using Atenas_Gym.ViewModel;
using FontAwesome.Sharp;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Atenas_Gym.View {
    
    
    /// <summary>
    /// ReceptionView
    /// </summary>
    public partial class ReceptionView : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 26 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MaterialDesignThemes.Wpf.DialogHost Testing;
        
        #line default
        #line hidden
        
        
        #line 286 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Cedula;
        
        #line default
        #line hidden
        
        
        #line 308 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock WatermarkCI;
        
        #line default
        #line hidden
        
        
        #line 366 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock clientName;
        
        #line default
        #line hidden
        
        
        #line 481 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock clientStatus;
        
        #line default
        #line hidden
        
        
        #line 547 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Create;
        
        #line default
        #line hidden
        
        
        #line 605 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox PlanComboBox;
        
        #line default
        #line hidden
        
        
        #line 658 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Renew;
        
        #line default
        #line hidden
        
        
        #line 700 "..\..\..\..\View\ReceptionView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox PlanComboBox2;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Atenas Gym;component/view/receptionview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\ReceptionView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Testing = ((MaterialDesignThemes.Wpf.DialogHost)(target));
            return;
            case 2:
            
            #line 251 "..\..\..\..\View\ReceptionView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Hide_Options);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Cedula = ((System.Windows.Controls.TextBox)(target));
            
            #line 299 "..\..\..\..\View\ReceptionView.xaml"
            this.Cedula.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.Cedula_change);
            
            #line default
            #line hidden
            
            #line 300 "..\..\..\..\View\ReceptionView.xaml"
            this.Cedula.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.NumberValidationTextBox);
            
            #line default
            #line hidden
            return;
            case 4:
            this.WatermarkCI = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.clientName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.clientStatus = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            
            #line 505 "..\..\..\..\View\ReceptionView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 515 "..\..\..\..\View\ReceptionView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Create_Client);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 523 "..\..\..\..\View\ReceptionView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Renew_Client);
            
            #line default
            #line hidden
            return;
            case 10:
            this.Create = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 11:
            this.PlanComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 12:
            this.Renew = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 13:
            this.PlanComboBox2 = ((System.Windows.Controls.ComboBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

