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
    
    public partial class Anusuchi6_Karyalaya
    {
        public int Anusuchi6_Karyalaya_Id { get; set; }
        public Nullable<int> Anusuchi6_Id { get; set; }
        public string Karyalaya_Amount { get; set; }
        public string Nirman_Samagri_Amount { get; set; }
        public string Dashya_Amount { get; set; }
        public string Adashya_Amount { get; set; }
        public string Others_Amount { get; set; }
        public string Travel_Expenses_Amount { get; set; }
        public string Technical_Supervise_Amount { get; set; }
        public string Masalanda_Amount { get; set; }
    
        public virtual Anusuchi6 Anusuchi6 { get; set; }
    }
}