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
    
    public partial class Anusuchi6
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Anusuchi6()
        {
            this.Anusuchi6_Janasahabhagita = new HashSet<Anusuchi6_Janasahabhagita>();
            this.Anusuchi6_Karyalaya = new HashSet<Anusuchi6_Karyalaya>();
            this.Anusuchi6_Solutions = new HashSet<Anusuchi6_Solutions>();
        }
    
        public int Anusuchi6_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Project_Name { get; set; }
        public string Ward_No { get; set; }
        public string Street_Name { get; set; }
        public string Upabhokta_Samiti_Name { get; set; }
        public string Adakshya { get; set; }
        public string Sachib { get; set; }
        public string Anudan_Rakam { get; set; }
        public string Chanda_Rakam { get; set; }
        public string Jana_Sahabhagita_Rakam { get; set; }
        public string Total_Amount { get; set; }
        public string Total_Expenses_TillNow { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Anusuchi6_Janasahabhagita> Anusuchi6_Janasahabhagita { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Anusuchi6_Karyalaya> Anusuchi6_Karyalaya { get; set; }
        public virtual Planning_Samjhauta Planning_Samjhauta { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Anusuchi6_Solutions> Anusuchi6_Solutions { get; set; }
    }
}
