//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CommunicationsShowroom.DbEntity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sales
    {
        public int Id { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> Id_Client { get; set; }
        public Nullable<int> Id_Device { get; set; }
        public Nullable<int> Price { get; set; }
        public Nullable<int> Id_Status { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual Device Device { get; set; }
        public virtual OrdersStatus OrdersStatus { get; set; }
        public virtual SalesStatus SalesStatus { get; set; }
    }
}
