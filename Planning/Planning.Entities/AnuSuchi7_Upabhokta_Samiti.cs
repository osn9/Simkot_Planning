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
    
    public partial class AnuSuchi7_Upabhokta_Samiti
    {
        public int AnuSuchi7_Upabhokta_Samiti_Id { get; set; }
        public Nullable<int> AnuSuchi7_Id { get; set; }
        public string Position { get; set; }
        public string Member_Name { get; set; }
        public string Gender { get; set; }
        public string Father_Husband_Name { get; set; }
        public string GrandFather_Name { get; set; }
        public string Mobile_No { get; set; }
    
        public virtual AnuSuchi7 AnuSuchi7 { get; set; }
    }
}
