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
    public class PlanningAnusuchi10Controller : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();

        PlanningAnusuchi10Provider pro = new PlanningAnusuchi10Provider();
        
        public ActionResult Anusuchi10(int? id ,int? ids)
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();

            var data = ent.AnuSuchi10.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            var data2 = ent.AnuSuchi10_Meeting.Where(x => x.AnuSuchi10_Id == ids).ToList();
            if (data.Count > 0 && data2.Count>0)
            {
                model = pro.getAnusuchi10List(id ?? 0).Where(x=>x.AnuSuchi10_Id==ids).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(model.AnuSuchi10_Id);
                model.Anusuchi10_MembersViewModelList = pro.GetAnusuchi10MembersList(model.AnuSuchi10_Id);
                model.Anusuchi10_Discussion_SubjectsViewModelList = pro.GetAnusuchi10SubjectList(model.AnuSuchi10_Id);
                model.Anusuchi10_Discussion_ConclusionsViewModelList = pro.GetAnusuchi10ConclusionList(model.AnuSuchi10_Id);
                model.Anusuchi10_MeetingViewModelList = pro.GetAnusuchi10MeetingList(model.AnuSuchi10_Id);
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = new List<Anusuchi10ViewModel>();
                //model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(id ?? 0);
                model.Anusuchi10_MembersViewModelList = pro.GetAnusuchi10MembersList(id ?? 0);
                model.Anusuchi10_Discussion_SubjectsViewModelList = pro.GetAnusuchi10SubjectList(id ?? 0);
                model.Anusuchi10_Discussion_ConclusionsViewModelList = pro.GetAnusuchi10ConclusionList(id ?? 0);
                model.Anusuchi10_MeetingViewModelList = pro.GetAnusuchi10MeetingList(id ?? 0);
                return View(model);
            }

        }

        [HttpPost]
        public ActionResult Anusuchi10(Anusuchi10ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची १० सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi10(model);
                TempData["Msg"] = "अनुसूची १० सुरक्षित भयो। ";
                return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }
        public ActionResult AddMembers()
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            return PartialView("_Members", model);
        }

        public ActionResult AddSubjects()
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            return PartialView("_Subjects", model);
        }

        public ActionResult AddConclusions()
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            return PartialView("_Conclusions", model);
        }


        public ActionResult Anugaman(int? id , int? ids)
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            var data = ent.AnuSuchi10.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            var data2 = ent.AnuSuchi10_Meeting.Where(x => x.AnuSuchi10_Id == ids).ToList();

            if (data.Count > 0 && data2.Count > 0)
            {
                model = pro.getAnusuchi10List(id ?? 0).Where(x => x.AnuSuchi10_Id == ids).SingleOrDefault();

                //model = pro.getAnusuchi10List(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(model.AnuSuchi10_Id);
                model.Anusuchi10_MembersViewModelList = pro.GetAnusuchi10MembersList(model.AnuSuchi10_Id);
                model.Anusuchi10_Discussion_SubjectsViewModelList = pro.GetAnusuchi10SubjectList(model.AnuSuchi10_Id);
                model.Anusuchi10_Discussion_ConclusionsViewModelList = pro.GetAnusuchi10ConclusionList(model.AnuSuchi10_Id);
                model.Anusuchi10_MeetingViewModelList = pro.GetAnusuchi10MeetingList(model.AnuSuchi10_Id);
                foreach (var item in model.Anusuchi10_MeetingViewModelList)
                {
                    model.Baithak_No = item.Baithak_No;
                    model.Baithak_Date = item.Baithak_Date;

                }
              //  model.Baithak_Date = model.Anusuchi10ViewModelList.Select(x => x.Baithak_No).FirstOrDefault();
                //model.Baithak_No = model.Anusuchi10ViewModelList.FirstOrDefault().Baithak_No;
                return View(model);
            }
            else
            {
                model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = new List<Anusuchi10ViewModel>();
                //model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(id ?? 0);
                model.Anusuchi10_MembersViewModelList = pro.GetAnusuchi10MembersList(id ?? 0);
                model.Anusuchi10_Discussion_SubjectsViewModelList = pro.GetAnusuchi10SubjectList(id ?? 0);
                model.Anusuchi10_Discussion_ConclusionsViewModelList = pro.GetAnusuchi10ConclusionList(id ?? 0);
                model.Anusuchi10_MeetingViewModelList = pro.GetAnusuchi10MeetingList(id ?? 0);
             

                return View(model);
            }

        }

        [HttpPost]
        public ActionResult Anugaman(Anusuchi10ViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "अनुसूची १० सुरक्षित भएन! कृपया पुनः प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdateAnusuchi10(model);
                TempData["Msg"] = "अनुसूची १० सुरक्षित भयो। ";
                return RedirectToAction("AnugamanIndex", new { id = model.Planning_Samjhauta_Id });
                //return RedirectToAction("SamjhautaCompleteReport", "PlanningSamjhauta", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            }
        }


        public ActionResult AnugamanCreate(int? id)
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
           
          
         
                model = pro.getPlanningSamjhautaList(id ?? 0).SingleOrDefault();
                model.PlanningSamjhautaMembersViewModelList = new List<Anusuchi10ViewModel>();
                //model.PlanningSamjhautaMembersViewModelList = pro.GetPlanningSamjhautaMembersList(id ?? 0);
                model.Anusuchi10_MembersViewModelList = pro.GetAnusuchi10MembersList(id ?? 0);
                model.Anusuchi10_Discussion_SubjectsViewModelList = pro.GetAnusuchi10SubjectList(id ?? 0);
                model.Anusuchi10_Discussion_ConclusionsViewModelList = pro.GetAnusuchi10ConclusionList(id ?? 0);
                model.Anusuchi10_MeetingViewModelList = pro.GetAnusuchi10MeetingList(id ?? 0);


                return View(model);
           

        }
        public ActionResult AnugamanIndex(int? id)
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            model.Planning_Samjhauta_Id = id;
            model.Anusuchi10ViewModelList = pro.getAnusuchi10Lists(id ?? 0);
            return View(model);
        }

        public ActionResult AnugamanDelete(int? id, int? ids)
        {

            var result = pro.deleteAnugaman(ids ?? 0);

            return RedirectToAction("AnugamanIndex", new { id = id });
        }


            public ActionResult AnugamaPartial(int? id, int? ids)
        {
            Anusuchi10ViewModel model = new Anusuchi10ViewModel();
            model.Planning_Samjhauta_Id = id;
            model.Anusuchi10ViewModelList = pro.getAnusuchi10Lists(id ?? 0);

            return PartialView("AnugamaPartial", model);
        }
    }
}