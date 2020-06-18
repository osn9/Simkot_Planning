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
    public class PlanningAnusuchi7Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningAnusuchi7Provider pro = new PlanningAnusuchi7Provider();
        
        public ActionResult Anusuchi7(int? id)
        {
            Anusuchi7ViewModel model = new Anusuchi7ViewModel();
            var data = ent.AnuSuchi7.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                model = pro.getAnusuchi7List(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(model.AnuSuchi7_Id);
                model.Anusuchi7_Anugaman_SamitiViewModelList = pro.GetAnusuchi7_Anugaman_SamitiList(model.AnuSuchi7_Id);
                model.Anusuchi7_Upabhokta_SamitiViewModelList = pro.GetAnusuchi7_Upabhokta_SamitiSubjectList(model.AnuSuchi7_Id);
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(id ?? 0);
                model.Anusuchi7_Anugaman_SamitiViewModelList = pro.GetAnusuchi7_Anugaman_SamitiList(id ?? 0);
                model.Anusuchi7_Upabhokta_SamitiViewModelList = pro.GetAnusuchi7_Upabhokta_SamitiSubjectList(id ?? 0);
                return View(model);
            }
        }
        [HttpPost]
        public ActionResult Anusuchi7(Anusuchi7ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची ७ सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi7(model);
                TempData["Msg"] = "अनुसूची ७ सुरक्षित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }
        public ActionResult AddUpaBhoktaSamiti()
        {
            Anusuchi7ViewModel model = new Anusuchi7ViewModel();
            return PartialView("_UpaBhoktaSamiti", model);
        }
        public ActionResult AddAnugamanSamiti()
        {
            Anusuchi7ViewModel model = new Anusuchi7ViewModel();
            return PartialView("_AnugamanSamiti", model);
        }
    }
}