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
    public class PlanningAnusuchi5Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi5Provider pro = new PlanningAnusuchi5Provider();
        public ActionResult Index(int? id)
        {
            Anusuchi5ViewModel model = new Anusuchi5ViewModel();
            var data = ent.AnuSuchi5.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if(data.Count>0)
            {
                model = pro.getAnusuchi5List(id??0).SingleOrDefault();
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaList(id??0).SingleOrDefault();
                return View(model);
            }
        }

        [HttpPost]
        public ActionResult Index(Anusuchi5ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "योजना सूचना पाटीको नमुना सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi5(model);
                TempData["Msg"] = "योजना सूचना पाटीको नमुना सुरछित भयो। ";
                //return RedirectToAction("Index",new { id=model.Planning_Samjhauta_Id});
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }

    }
}