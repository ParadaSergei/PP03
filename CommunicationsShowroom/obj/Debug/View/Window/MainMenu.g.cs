﻿#pragma checksum "..\..\..\..\View\Window\MainMenu.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "D58F91311A59B6CE243B714AA24EAABFAE0E029284ACD74DD53A3185A8088EB8"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using CommunicationsShowroom.View.Window;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
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


namespace CommunicationsShowroom.View.Window {
    
    
    /// <summary>
    /// MainMenu
    /// </summary>
    public partial class MainMenu : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 38 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Position;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button MinimizeButton;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button CloseButton;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox TableComboAdmin;
        
        #line default
        #line hidden
        
        
        #line 80 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Frame FramePageAdmin;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button InsertButton;
        
        #line default
        #line hidden
        
        
        #line 106 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeleteButton;
        
        #line default
        #line hidden
        
        
        #line 121 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button EditButton;
        
        #line default
        #line hidden
        
        
        #line 130 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackButton;
        
        #line default
        #line hidden
        
        
        #line 145 "..\..\..\..\View\Window\MainMenu.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button UpdatsButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/CommunicationsShowroom;component/view/window/mainmenu.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\View\Window\MainMenu.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 31 "..\..\..\..\View\Window\MainMenu.xaml"
            ((System.Windows.Controls.Grid)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.Drag);
            
            #line default
            #line hidden
            return;
            case 2:
            this.Position = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.MinimizeButton = ((System.Windows.Controls.Button)(target));
            
            #line 50 "..\..\..\..\View\Window\MainMenu.xaml"
            this.MinimizeButton.Click += new System.Windows.RoutedEventHandler(this.MinimizeWindow_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.CloseButton = ((System.Windows.Controls.Button)(target));
            
            #line 60 "..\..\..\..\View\Window\MainMenu.xaml"
            this.CloseButton.Click += new System.Windows.RoutedEventHandler(this.CloseApp_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.TableComboAdmin = ((System.Windows.Controls.ComboBox)(target));
            
            #line 76 "..\..\..\..\View\Window\MainMenu.xaml"
            this.TableComboAdmin.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.adminComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.FramePageAdmin = ((System.Windows.Controls.Frame)(target));
            return;
            case 7:
            this.InsertButton = ((System.Windows.Controls.Button)(target));
            
            #line 95 "..\..\..\..\View\Window\MainMenu.xaml"
            this.InsertButton.Click += new System.Windows.RoutedEventHandler(this.InsertButton_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.DeleteButton = ((System.Windows.Controls.Button)(target));
            
            #line 108 "..\..\..\..\View\Window\MainMenu.xaml"
            this.DeleteButton.Click += new System.Windows.RoutedEventHandler(this.DeleteButton_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.EditButton = ((System.Windows.Controls.Button)(target));
            
            #line 122 "..\..\..\..\View\Window\MainMenu.xaml"
            this.EditButton.Click += new System.Windows.RoutedEventHandler(this.EditButton_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.BackButton = ((System.Windows.Controls.Button)(target));
            
            #line 129 "..\..\..\..\View\Window\MainMenu.xaml"
            this.BackButton.Click += new System.Windows.RoutedEventHandler(this.backButton_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.UpdatsButton = ((System.Windows.Controls.Button)(target));
            
            #line 146 "..\..\..\..\View\Window\MainMenu.xaml"
            this.UpdatsButton.Click += new System.Windows.RoutedEventHandler(this.UpdatsButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

