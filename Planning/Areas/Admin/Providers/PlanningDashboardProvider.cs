using Planning.Areas.Admin.Models;
using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Providers
{
    public class PlanningDashboardProvider
    {
        public PlanningDashBoardViewModel GetModelList()
       {
            PlanningDashBoardViewModel model = new PlanningDashBoardViewModel();
            using (PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities())
            {
                var budgetSourcelist = (from pe in  ent.Planning_Entry 
                                        join ps in ent.Planning_Samjhauta on pe.Planning_Samjhauta_Id equals ps.Planning_Samjhauta_Id
                                        select new { pe.Budget_Source , ps.Total_Amount ,pe.Planning_Type}     
                                        ).ToList();
                foreach(var item in budgetSourcelist)
                {
                    PlanningDashBoardViewModel view = new PlanningDashBoardViewModel();
                    view.BudgetSourceId = item.Budget_Source ?? 0;
                    if (item.Total_Amount != null)
                    { 
                    view.PlanningTotalAmount = Convert.ToDouble(Utility.NepaliEnglishNumber.Nepali_English(item.Total_Amount));
                    }
                    else
                    {
                        view.PlanningTotalAmount = 0;
                    }
                    model.BudgetSourceList.Add(view);
                }
                model.BudgetSourceList = model.BudgetSourceList.GroupBy(x => x.BudgetSourceId).Select(x => new PlanningDashBoardViewModel { BudgetSourceId = x.Key, PlanningTotalAmount = x.Sum(u=>u.PlanningTotalAmount)}).ToList();
                   
                foreach(var item in budgetSourcelist)
                {
                    PlanningDashBoardViewModel viewWard = new PlanningDashBoardViewModel();
                    viewWard.BudgetSourceId = item.Budget_Source ?? 0;
                    viewWard.PlanningType = item.Planning_Type;
                    if (item.Total_Amount != null)
                    {
                        viewWard.PlanningTotalAmount = Convert.ToDouble(Utility.NepaliEnglishNumber.Nepali_English(item.Total_Amount));
                    }
                    else
                    {
                        viewWard.PlanningTotalAmount = 0;
                    }
                    model.PlanningTypeList.Add(viewWard);
                }
               var wardList = model.PlanningTypeList.Where(x=>x.PlanningType=="O").ToList();

                model.PlanningWardTypeList = wardList.GroupBy(x => x.BudgetSourceId)
                    .Select(x => new PlanningDashBoardViewModel
                    {
                        BudgetSourceId = x.Key,
                        PlanningTotalAmount = x.Sum(u => u.PlanningTotalAmount),                       
                    }).ToList();

                var nagarlist = model.PlanningTypeList.Where(x => x.PlanningType == "N").ToList();
                model.PlanningNagarTypeList = nagarlist.GroupBy(x => x.BudgetSourceId)
                    .Select(x => new PlanningDashBoardViewModel
                    {
                        BudgetSourceId = x.Key,
                        PlanningTotalAmount = x.Sum(u => u.PlanningTotalAmount),
                    }).ToList();
                //.GroupBy(x =>new { x.PlanningType,x.BudgetSourceId})
                //.Select(x => new PlanningDashBoardViewModel {
                //             PlanningType =x.Key.PlanningType,
                //             PlanningTotalAmount = x.Sum(u => u.PlanningTotalAmount),
                //             BudgetSourceId=x.Key.BudgetSourceId
                //}).ToList();

            }
            return model;
        }
    }
}