using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models
{
    public class FiscalYearRecordViewModel
    {
        public int Fiscal_Year_Record_Id { get; set; }
        [Required(ErrorMessage = "क्रिपया आर्थिक वर्ष राखनुहोस ।")]
        public string Title { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public List<FiscalYearRecordViewModel> FiscalYearRecordViewModelList { get; set; }

    }
}