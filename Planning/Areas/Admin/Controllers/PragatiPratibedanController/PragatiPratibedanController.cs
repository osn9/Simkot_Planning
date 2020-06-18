using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.PlanningSamjhautaViewModel;
using Planning.Areas.Admin.Providers.PragatiPratibedanProvider;
using Planning.Planning.Entities;


namespace Planning.Areas.Admin.Controllers.PragatiPratibedanController
{
    [Authorize]
    public class PragatiPratibedanController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PragatiPratibedanProvider pro = new PragatiPratibedanProvider();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Anusuchi1( string FiscalYear, string OdaNagar, string ProjectName)
         {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.PragatiPratibedanAnusuchi1List=pro.getPratibedanAnusuchi1(FiscalYear,OdaNagar,ProjectName);
            return View(model);
        }

        public ActionResult Anusuchi2(string FiscalYear, string OdaNagar, string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.PragatiPratibedanAnusuchi2List = pro.getPratibedanAnusuchi2(FiscalYear, OdaNagar, ProjectName);
            //model.PragatiPratibedanAnusuchi2List = pro.getPratibedanAnusuchi2(FiscalYear, OdaNagar, ProjectName).GroupBy(x=>x.Project_Name).Select(g=>g.First()).ToList();
            //model.PragatiPratibedanAnusuchi2BhuktaniList = pro.getPlanningBhuktaniList();

            model.PlanningSamjhautaPeskiDetailsList = pro.getPlanningBhuktaniList().Where(x => x.Bhuktani_Type == 1).ToList();
            model.PlanningSamjhautaKistaFirstDetailsList = pro.getPlanningBhuktaniList().Where(x => x.Bhuktani_Type == 2).ToList();
            model.PlanningSamjhautaKistaSecondDetailsList = pro.getPlanningBhuktaniList().Where(x => x.Bhuktani_Type ==3).ToList();
            model.PlanningSamjhautaKistaThirdDetailsList = pro.getPlanningBhuktaniList().Where(x => x.Bhuktani_Type == 4).ToList();

            return View(model);
        }

        public ActionResult GetProjectNameByFiscalYear(string fiscalYear)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            var data = (from i in ent.Planning_Samjhauta
                        join j in ent.Project_Entry_Detail on i.Planning_Samjhauta_Id equals j.Planning_Samjhauta_Id
                        where i.Status == true && i.Fiscal_Year_Record == fiscalYear
                        group j by new { j.Planning_Samjhauta_Id, j.Project_Name } into g
                        select g).Select(x => new SelectListItem { Text = x.Key.Project_Name, Value = x.Key.Project_Name });
            return Json(data, JsonRequestBehavior.AllowGet);
        }




    }
}