using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Models
{
    public class PlanningDashBoardViewModel
    {
        public PlanningDashBoardViewModel()
        {
            BudgetSourceList = new List<PlanningDashBoardViewModel>();
            PlanningTypeList = new List<PlanningDashBoardViewModel>();
            PlanningWardTypeList = new List<PlanningDashBoardViewModel>();
            PlanningNagarTypeList = new List<PlanningDashBoardViewModel>();
        }
        public string BudgetSourceName { get; set; }
        public double PlanningTotalAmount { get; set; }
        public int BudgetSourceId { get; set;}
        public string PlanningType { get; set; }
        public List<PlanningDashBoardViewModel> BudgetSourceList { get; set;}
        public double? WardAmount { get; set; }
        public List<PlanningDashBoardViewModel> PlanningTypeList { get; set; }
        public double? NagarAmount { get; set;}
        public List<PlanningDashBoardViewModel> PlanningWardTypeList { get; set; }
        public List<PlanningDashBoardViewModel> PlanningNagarTypeList { get; set; }
    }
}