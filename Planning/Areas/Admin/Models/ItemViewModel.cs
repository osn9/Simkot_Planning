using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models
{
    public class ItemViewModel
    {


        public int itemId { get; set; }
        [Required(ErrorMessage = "कृपया नाम दिनुहोस्.")]
        public string name { get; set; }
        [Required(ErrorMessage = "कृपया एकाईको नाम दिनुहोस्")]
        public string ekainame { get; set; }
        public int bhukataniItemId { get; set; }
        public int samjhautaid { get; set; }
        public Nullable<decimal> Quantity { get; set; }

        public Nullable<int> BhutaniID { get; set; }
        //public Nullable<int> itemid { get; set; }

        public List<ItemViewModel> list { get; set; }
}
}