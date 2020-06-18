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
    public class PlanningAnusuchi11Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi11Provider pro = new PlanningAnusuchi11Provider();
        public ActionResult Anusuchi11(int? id)
        {
            Anusuchi11ViewModel model = new Anusuchi11ViewModel();
            model.Anusuchi11ViewModelList= pro.getAnusuchi11List(id ?? 0).ToList();
            model.Planning_Samjhauta_Id = id;
            return View(model);
        }
        [HttpPost]
        public ActionResult Anusuchi11(Anusuchi11ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची ११ सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi11(model);
                TempData["Msg"] = "अनुसूची ११ सुरक्षित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }
        

        public ActionResult AddMembers()
        {
            Anusuchi11ViewModel model = new Anusuchi11ViewModel();
            return PartialView("_Members", model);
        }

    }
}