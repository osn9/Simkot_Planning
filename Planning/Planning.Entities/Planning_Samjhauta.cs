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
    
    public partial class Planning_Samjhauta
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Planning_Samjhauta()
        {
            this.Aayojana_Maintainance = new HashSet<Aayojana_Maintainance>();
            this.Amanat_Deatils = new HashSet<Amanat_Deatils>();
            this.AnuSuchi1 = new HashSet<AnuSuchi1>();
            this.AnuSuchi10 = new HashSet<AnuSuchi10>();
            this.AnuSuchi11 = new HashSet<AnuSuchi11>();
            this.Anusuchi6 = new HashSet<Anusuchi6>();
            this.AnuSuchi7 = new HashSet<AnuSuchi7>();
            this.AnuSuchi9 = new HashSet<AnuSuchi9>();
            this.Beneficiaries_Group = new HashSet<Beneficiaries_Group>();
            this.Organization_Representative = new HashSet<Organization_Representative>();
            this.Payment_Records = new HashSet<Payment_Records>();
            this.Planning_Documents = new HashSet<Planning_Documents>();
            this.Planning_Entry_Anudan = new HashSet<Planning_Entry_Anudan>();
            this.Planning_Entry_Kista_Detail = new HashSet<Planning_Entry_Kista_Detail>();
            this.Project_Other_Source = new HashSet<Project_Other_Source>();
            this.Project_Source_Detail = new HashSet<Project_Source_Detail>();
            this.Samiti_Detail = new HashSet<Samiti_Detail>();
            this.UpaBhokta_Samiti_Members_Details = new HashSet<UpaBhokta_Samiti_Members_Details>();
            this.UpbhoktaSamiti_Details = new HashSet<UpbhoktaSamiti_Details>();
            this.Planning_Entry = new HashSet<Planning_Entry>();
            this.Project_Entry_Detail = new HashSet<Project_Entry_Detail>();
            this.AnuSuchi4 = new HashSet<AnuSuchi4>();
            this.AnuSuchi3 = new HashSet<AnuSuchi3>();
            this.AnuSuchi5 = new HashSet<AnuSuchi5>();
            this.Municipality_Samiti_Manjuri_Patra = new HashSet<Municipality_Samiti_Manjuri_Patra>();
        }
    
        public int Planning_Samjhauta_Id { get; set; }
        public string Fiscal_Year_Record { get; set; }
        public string Samjhauta_Org_Name { get; set; }
        public string Contegency_Amount { get; set; }
        public string MarmatSambhar_Amount { get; set; }
        public string Total_Amount { get; set; }
        public Nullable<bool> Samjhauta_Acceptance { get; set; }
        public string Contegency_Percentage { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Aayojana_Maintainance> Aayojana_Maintainance { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Amanat_Deatils> Amanat_Deatils { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi1> AnuSuchi1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi10> AnuSuchi10 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi11> AnuSuchi11 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Anusuchi6> Anusuchi6 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi7> AnuSuchi7 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi9> AnuSuchi9 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Beneficiaries_Group> Beneficiaries_Group { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Organization_Representative> Organization_Representative { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Payment_Records> Payment_Records { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Planning_Documents> Planning_Documents { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Planning_Entry_Anudan> Planning_Entry_Anudan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Planning_Entry_Kista_Detail> Planning_Entry_Kista_Detail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Project_Other_Source> Project_Other_Source { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Project_Source_Detail> Project_Source_Detail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Samiti_Detail> Samiti_Detail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UpaBhokta_Samiti_Members_Details> UpaBhokta_Samiti_Members_Details { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UpbhoktaSamiti_Details> UpbhoktaSamiti_Details { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Planning_Entry> Planning_Entry { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Project_Entry_Detail> Project_Entry_Detail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi4> AnuSuchi4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi3> AnuSuchi3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi5> AnuSuchi5 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Municipality_Samiti_Manjuri_Patra> Municipality_Samiti_Manjuri_Patra { get; set; }
    }
}
