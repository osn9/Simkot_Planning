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
    
    public partial class AnuSuchi10
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AnuSuchi10()
        {
            this.AnuSuchi10_Discussion_Conclusions = new HashSet<AnuSuchi10_Discussion_Conclusions>();
            this.AnuSuchi10_Discussion_Subjects = new HashSet<AnuSuchi10_Discussion_Subjects>();
            this.AnuSuchi10_Meeting = new HashSet<AnuSuchi10_Meeting>();
            this.AnuSuchi10_Members = new HashSet<AnuSuchi10_Members>();
        }
    
        public int AnuSuchi10_Id { get; set; }
        public Nullable<int> Planning_Samjhauta_Id { get; set; }
        public string Adakshya { get; set; }
        public string Adakshya_Gender { get; set; }
        public string Adakshya_MobileNo { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<int> DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi10_Discussion_Conclusions> AnuSuchi10_Discussion_Conclusions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi10_Discussion_Subjects> AnuSuchi10_Discussion_Subjects { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi10_Meeting> AnuSuchi10_Meeting { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnuSuchi10_Members> AnuSuchi10_Members { get; set; }
        public virtual Planning_Samjhauta Planning_Samjhauta { get; set; }
    }
}
