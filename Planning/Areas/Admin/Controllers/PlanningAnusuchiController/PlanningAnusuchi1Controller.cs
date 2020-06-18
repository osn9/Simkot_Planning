using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.PlanningAnusuchiViewModel;
using Planning.Areas.Admin.Providers.PlanningAnusuchiProvider;
using Planning.Planning.Entities;


namespace Planning.Areas.Admin.Controllers.PlanningAnusuchiController
{
    [Authorize]
    public class PlanningAnusuchi1Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi1Provider pro = new PlanningAnusuchi1Provider();
        public ActionResult Anusuchi1(int? id)
        {
            Anusuchi1ViewModel model = new Anusuchi1ViewModel();
            var data = ent.AnuSuchi1.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                //model = pro.getAnusuchi1List(id??0).SingleOrDefault();
                model.Anusuchi1ViewModelList = pro.getAnusuchi1List(id ?? 0).ToList();
                model.Planning_Samjhauta_Id = id;
                return View(model);
            }
            else
            {
                //model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.Anusuchi1ViewModelList = pro.getPlanningSamjhautaList(id ?? 0).ToList();
                model.Planning_Samjhauta_Id = id;
                return View(model);
            }
        }
        [HttpPost]
        public ActionResult Anusuchi1(Anusuchi1ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची १ सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi1(model);
                TempData["Msg"] = "अनुसूची १ सुरक्षित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }
        
        public ActionResult AddSamiti()
        {
            Anusuchi1ViewModel model = new Anusuchi1ViewModel();
            return PartialView("_Samiti", model);
        }
    }
}