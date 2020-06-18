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
    public class PlanningAnusuchi9Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();

        PlanningAnusuchi9Provider pro = new PlanningAnusuchi9Provider();
        
        public ActionResult Anusuchi9(int? id)
        {
            Anusuchi9ViewModel model = new Anusuchi9ViewModel();
            var data = ent.AnuSuchi9.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if (data.Count > 0)
            {
                model = pro.getAnusuchi9List(id ??0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(model.AnuSuchi9_Id);
                model.Anusuchi9_MembersViewModelList = pro.GetAnusuchi9MembersList(model.AnuSuchi9_Id);
                model.Anusuchi9_Discussion_SubjectsViewModelList = pro.GetAnusuchi9SubjectList(model.AnuSuchi9_Id);
                model.Anusuchi9_Discussion_ConclusionsViewModelList = pro.GetAnusuchi9ConclusionList(model.AnuSuchi9_Id);
                model.Anusuchi9_MeetingViewModelList = pro.GetAnusuchi9MeetingList(model.AnuSuchi9_Id);
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(id ?? 0);
                model.Anusuchi9_MembersViewModelList = pro.GetAnusuchi9MembersList(id ?? 0);
                model.Anusuchi9_Discussion_SubjectsViewModelList = pro.GetAnusuchi9SubjectList(id ?? 0);
                model.Anusuchi9_Discussion_ConclusionsViewModelList = pro.GetAnusuchi9ConclusionList(id ?? 0);
                model.Anusuchi9_MeetingViewModelList = pro.GetAnusuchi9MeetingList(id ?? 0);
                return View(model);
            }
            
        }
     
        [HttpPost]
        public ActionResult Anusuchi9(Anusuchi9ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची ९ सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi9(model);
                TempData["Msg"] = "अनुसूची ९ सुरक्षित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }
        public ActionResult AddMembers()
        {
            Anusuchi9ViewModel model = new Anusuchi9ViewModel();
            return PartialView("_Members", model);
        }

        public ActionResult AddSubjects()
        {
            Anusuchi9ViewModel model = new Anusuchi9ViewModel();
            return PartialView("_Subjects", model);
        }

        public ActionResult AddConclusions()
        {
            Anusuchi9ViewModel model = new Anusuchi9ViewModel();
            return PartialView("_Conclusions", model);
        }
    }
}