//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Planning.Planning.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Item
    {
        public int itemId { get; set; }
        public string name { get; set; }
        public Nullable<bool> Status { get; set; }
        public string ekainame { get; set; }
        public Nullable<System.DateTime> createdDate { get; set; }
        public Nullable<int> createdBy { get; set; }
        public Nullable<int> deletedBy { get; set; }
        public Nullable<System.DateTime> deletedDate { get; set; }
        public Nullable<int> updateBy { get; set; }
        public Nullable<System.DateTime> updatedDate { get; set; }
    }
}