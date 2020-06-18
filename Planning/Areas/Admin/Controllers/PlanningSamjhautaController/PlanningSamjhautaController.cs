using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Providers.PlanningSamjhautaProvider;
using Planning.Areas.Admin.Models.PlanningSamjhautaViewModel;
using Planning.Areas.Admin.Models.PlanningBhuktaniViewModel;
using Planning.Areas.Admin.Models.PlanningEntryViewModel;
using Planning.Areas.Admin.Models.PlanningDocumentsViewModel;
using Planning.Planning.Entities;
using System.IO;

using Microsoft.Office.Interop.Excel;
using System.Runtime.InteropServices;
using System.Web.UI;
using PagedList;
using Planning.Utility;
using Planning.Areas.Admin.Models;

namespace Planning.Areas.Admin.Controllers.PlanningSamjhautaController
{
    [Authorize]
    public class PlanningSamjhautaController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        PlanningSamjhautaProvider pro = new PlanningSamjhautaProvider();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult PlanningSamjhautaIndex(string currentFilterPlanning_Type, string currentFilterSamjhauta_Org_Name, bool? currentFilterSamjhauta_Acceptance, int? Currentward,
            string Planning_Type, string Samjhauta_Org_Name,int? Ward_No, bool? Samjhauta_Acceptance, int? page)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.Current_Fiscal_Year_Record = Utility.CommonUtility.GetCurrentFiscalYearTitle();
            if (Planning_Type != null || Samjhauta_Org_Name != null || Samjhauta_Acceptance != null)
            {
                ViewBag.currentFilterPlanning_Type = Planning_Type;
                ViewBag.currentFilterSamjhauta_Org_Name = Samjhauta_Org_Name;
                ViewBag.currentFilterSamjhauta_Acceptance = Samjhauta_Acceptance;
                ViewBag.Ward_No = Ward_No;
                
                page = 1;
            }
            else if (page != null || currentFilterPlanning_Type != null || currentFilterSamjhauta_Org_Name != null || currentFilterSamjhauta_Acceptance != null || Currentward != null)
            {
                ViewBag.currentFilterPlanning_Type = currentFilterPlanning_Type;
                ViewBag.currentFilterSamjhauta_Org_Name = currentFilterSamjhauta_Org_Name;
                ViewBag.currentFilterSamjhauta_Acceptance = currentFilterSamjhauta_Acceptance;
                ViewBag.currentFilterWard = currentFilterSamjhauta_Acceptance;
                ViewBag.Currentward = Currentward;

                Planning_Type = currentFilterPlanning_Type;
                Samjhauta_Org_Name = currentFilterSamjhauta_Org_Name;
                Samjhauta_Acceptance = currentFilterSamjhauta_Acceptance;
            }
            else {
                Planning_Type = currentFilterPlanning_Type;
                Samjhauta_Org_Name = currentFilterSamjhauta_Org_Name;
                Samjhauta_Acceptance = currentFilterSamjhauta_Acceptance;
                Ward_No = Currentward;
            }
            // fatch Data From DataBase
            var year = model.Current_Fiscal_Year_Record;
            var List = pro.GetCurrentPlanningSamjhautaList(year);
            // Filter Data
            if (!string.IsNullOrEmpty(Planning_Type))
            {
                List = List.Where(x => x.Planning_Type.Contains(Planning_Type)).ToList();
            }
            if (!string.IsNullOrEmpty(Samjhauta_Org_Name))
            {
                List = List.Where(x => x.Samjhauta_Org_Name.Contains(Samjhauta_Org_Name)).ToList();
            }
            if (Ward_No!=null)
            {
                List = List.Where(x => x.Ward_No==Ward_No).ToList();
            }
            if (Samjhauta_Acceptance != null)
            {
                bool samjhauta_Acceptance = Samjhauta_Acceptance ?? false;
                List = List.Where(x => x.Samjhauta_Acceptance == samjhauta_Acceptance).ToList();
            }

            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(List.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult PlanningSamjhauta()
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }

        [HttpPost]
        public ActionResult PlanningSamjhauta(PlanningSamjhautaViewModel model)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();

            model.FiscalYear = Utility.CommonUtility.GetCurrentFiscalYearTitle();
            if (!ModelState.IsValid)
            {
                model.OrganizationSetupList = pro.GetOrganizationList();
                TempData["Msg"] = "नगरपालिका कार्यालय र उपभोक्ता समिति बीचको सम्झौता सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                try
                {
                    //    model.Project_Start_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjStartDate));
                    //    model.Project_End_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjEndDate));
                    //    model.Samiti_Estd_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliSamitiEstdDate));
                    //    model.Municipality_Manjuri_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliMunicipalityManjuriDate));
                    if (model.NepaliProjStartDate != null)
                        model.Project_Start_Date = (Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjStartDate)).ToString();
                    if (model.NepaliProjEndDate != null)
                        model.Project_End_Date =(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjEndDate)).ToString();
                    if (model.NepaliSamitiEstdDate != null)
                        model.Samiti_Estd_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliSamitiEstdDate));
                    if (model.NepaliMunicipalityManjuriDate != null)
                        model.Municipality_Manjuri_Date = (Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliMunicipalityManjuriDate)).ToString();

                    model.Planning_Samjhauta_Id = pro.InsertPlanningSamjhauta(model);
                TempData["Msg"] = "नगरपालिका कार्यालय र उपभोक्ता समिति बीचको सम्झौता सफलतापूर्वक सुरछित भयो। ";

                }
                catch (Exception ex)
                {

                    //throw;
                }

                //return RedirectToAction("SamjhautaReport",new { planningSamjhautaId = model.Planning_Samjhauta_Id});
                //return RedirectToAction("SamjhautaReport");
                return RedirectToAction("SamjhautaCompleteReport", new { planningSamjhautaId = model.Planning_Samjhauta_Id });
            } 
        }

        public ActionResult AddMore()
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            return PartialView("_UpaBhoktaSamitiMembers", model);
        }

        public ActionResult PlanningSamjhautaEdit(int id)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model = pro.GetPlanningSamjhautaById(id).SingleOrDefault();

            try
            {
                //model.NepaliProjStartDate = Utility.CommonUtility.getNepaliDate(model.Project_Start_Date.Value.ToShortDateString());
                //model.NepaliProjEndDate = Utility.CommonUtility.getNepaliDate(model.Project_End_Date.Value.ToShortDateString());
                //model.NepaliSamitiEstdDate = Utility.CommonUtility.getNepaliDate(model.Samiti_Estd_Date.Value.ToShortDateString());
                //model.NepaliMunicipalityManjuriDate = Utility.CommonUtility.getNepaliDate(model.Municipality_Manjuri_Date.Value.ToShortDateString());
                if (model.Project_Start_Date != null)
                    model.NepaliProjStartDate = Utility.CommonUtility.getNepaliDate(model.Project_Start_Date);
                if (model.Project_End_Date != null)
                    model.NepaliProjEndDate = Utility.CommonUtility.getNepaliDate(model.Project_End_Date);
                if (model.Samiti_Estd_Date != null)
                    model.NepaliSamitiEstdDate = Utility.CommonUtility.getNepaliDate(model.Samiti_Estd_Date.Value.ToShortDateString());
                if (model.Municipality_Manjuri_Date != null)
                    model.NepaliMunicipalityManjuriDate = Utility.CommonUtility.getNepaliDate(model.Municipality_Manjuri_Date);

            }
            catch (Exception) 
            {

                //throw;
            }

            model.PlanningSamjhautaKistaFirstDetailsList = pro.GetKistaDetailListByPlanningSamjhautaId(id).Where(x => x.Kista_Kram == "पहिलो").ToList();
            model.PlanningSamjhautaKistaSecondDetailsList = pro.GetKistaDetailListByPlanningSamjhautaId(id).Where(x => x.Kista_Kram == "दोश्राे").ToList();
            model.PlanningSamjhautaKistaThirdDetailsList = pro.GetKistaDetailListByPlanningSamjhautaId(id).Where(x => x.Kista_Kram == "तेश्रो").ToList();

            model.KistaFirstDetailsList = pro.GetKistaDetailListByPlanningSamjhautaEntryId(id).Where(x => x.Kista_Kram == "पहिलो").ToList();
            model.KistaSecondDetailsList = pro.GetKistaDetailListByPlanningSamjhautaEntryId(id).Where(x => x.Kista_Kram == "दोश्राे").ToList();
            model.KistaThirdDetailsList = pro.GetKistaDetailListByPlanningSamjhautaEntryId(id).Where(x => x.Kista_Kram == "तेश्रो").ToList();
            model.KistaLastDetailsList = pro.GetKistaDetailListByPlanningSamjhautaEntryId(id).Where(x => x.Kista_Kram == "अन्तिम").ToList();

            model.UpaBhoktaSamitiMemberList = pro.GetUpaBhoktaSamitiList(id);

            model.OrganizationSetupList = pro.GetOrganizationList();

            return View(model);
        }

        [HttpPost]
        public ActionResult PlanningSamjhautaEdit(PlanningSamjhautaViewModel model)
        {
            model.FiscalYear = Utility.CommonUtility.GetCurrentFiscalYearTitle();
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "नगरपालिका कार्यालय र उपभोक्ता समिति बीचको सम्झौता सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                //if(model.Planning_Type=="O")
                //{
                //    model.Ward_No = model.Ward_No;
                //    model.Work_Area = model.Work_Area;
                //}
                //else if(model.Planning_Type == "N")
                //{
                //    model.Ward_No = null;
                //    model.Work_Area = null;
                //}

                if (model.NepaliProjStartDate != null)
                    model.Project_Start_Date = (Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjStartDate)).ToString();
                if (model.NepaliProjEndDate != null)
                    model.Project_End_Date = (Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliProjEndDate)).ToString();
                if (model.NepaliSamitiEstdDate != null)
                    model.Samiti_Estd_Date = Convert.ToDateTime(Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliSamitiEstdDate));
                if (model.NepaliMunicipalityManjuriDate != null)
                    model.Municipality_Manjuri_Date = (Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.NepaliMunicipalityManjuriDate)).ToString();

                pro.UpdatePlanningSamjhauta(model);
                TempData["Msg"] = "नगरपालिका कार्यालय र उपभोक्ता समिति बीचको सम्झौता सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("PlanningSamjhautaIndex");
            }
        }

        public ActionResult SamjhautaCompleteReport(int planningSamjhautaId)
        {
            Planning_Samjhauta model = new Planning_Samjhauta();
            model = pro.GetPlanning_SamjhautaByID(planningSamjhautaId);
            return View(model);
        }

        public ActionResult SamjhautaReport(/*int planningSamjhautaId*/string FiscalYear, string OrgName, string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.SamjhautaReportList = pro.GetPlanningSamjhautaList(/*planningSamjhautaId*/FiscalYear, OrgName, ProjectName);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }
        public ActionResult TriSamjhautaReport(/*int planningSamjhautaId*/string FiscalYear, string OrgName, string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.SamjhautaReportList = pro.GetPlanningSamjhautaList(/*planningSamjhautaId*/FiscalYear, OrgName, ProjectName);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }



        public ActionResult PlanningDocuments(int id,string fiscalYear,string projectName)
        {
            PlanningDocumentsViewModel model = new PlanningDocumentsViewModel();
            model.Planning_Samjhauta_Id = id;
            model.Fiscal_Year = fiscalYear;
            model.Project_Name = projectName;
            var data = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).ToList();
            if(data.Count>0)
            {
                model = pro.GetAllPlanningDocumentsForEdit(id);
            }
            else
            {
                model.PlanningDocumentsViewModelList = pro.GetAllPlanningDocuments(model);
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult PlanningDocuments(PlanningDocumentsViewModel model, HttpPostedFileBase file, HttpPostedFileBase file1, HttpPostedFileBase file2, HttpPostedFileBase file3, HttpPostedFileBase file4, HttpPostedFileBase file5, HttpPostedFileBase file6, HttpPostedFileBase file7)
        {
            //var imagePath = "/PlanningRelatedFiles/";
            //if (file != null)
            //    {
            //        bool SetupIdname = System.IO.Directory.Exists(Server.MapPath(imagePath + "/" + model.Planning_Samjhauta_Id));
            //        if (!SetupIdname)
            //        {
            //            System.IO.Directory.CreateDirectory(Server.MapPath(imagePath + "/" + model.Planning_Samjhauta_Id));
            //        }
            //        string path = imagePath + "/" + model.Planning_Samjhauta_Id + "/" + file.FileName;
            //        file.SaveAs(Server.MapPath(path));
            //    }


            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "";
                return View(model);
            }
            else
            {
                var imagePath = "/PlanningRelatedFiles/";
                if (file != null)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file.SaveAs(path);
                    model.Upabhokta_Gathan = imagePath + file.FileName;
                }
                if (file1 != null)
                {
                    var fileName = Path.GetFileName(file1.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file1.SaveAs(path);
                    model.Nirnaya = imagePath + file1.FileName;
                }
                if (file2 != null)
                {
                    var fileName = Path.GetFileName(file2.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file2.SaveAs(path);
                    model.Samjhauta = imagePath + file2.FileName;
                }
                if (file3 != null)
                {
                    var fileName = Path.GetFileName(file3.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file3.SaveAs(path);
                    model.Anuman = imagePath + file3.FileName;
                }
                if (file4 != null)
                {
                    var fileName = Path.GetFileName(file4.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file4.SaveAs(path);
                    model.Mapan = imagePath + file4.FileName;
                }
                if (file5 != null)
                {
                    var fileName = Path.GetFileName(file5.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file5.SaveAs(path);
                    model.Pramanikaran = imagePath + file5.FileName;
                }
                if (file6 != null)
                {
                    var fileName = Path.GetFileName(file6.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file6.SaveAs(path);
                    model.Karya_Sampanna = imagePath + file6.FileName;
                }
                if (file7 != null)
                {
                    var fileName = Path.GetFileName(file7.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file7.SaveAs(path);
                    model.Bhuktani_Nibedan = imagePath + file7.FileName;
                }

                pro.UploadPlanningDocuments(model);

                return RedirectToAction("PlanningDocuments");
            }
        }

        public FileResult DownloadPlanningDocumentFiles(int id,int id1)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            if (id1 == 1)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Upabhokta_Gathan).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if(id1 == 2)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Nirnaya).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 3)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Samjhauta).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 4)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Anuman).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 5)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Mapan).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 6)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Pramanikaran).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 7)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Karya_Sampanna).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else if (id1 == 8)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Bhuktani_Nibedan).FirstOrDefault();
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
            }
            else
            {
                return null;
            }
        }

        public FileResult PreviewPlanningDocumentFile(int id,int id1)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            if (id1 == 1)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Upabhokta_Gathan).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if(id1 == 2)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Nirnaya).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 3)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Samjhauta).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 4)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Anuman).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 5)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Mapan).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 6)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Pramanikaran).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 7)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Karya_Sampanna).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if (id1 == 8)
            {
                var imagepath = ent.Planning_Documents.Where(x => x.Planning_Samjhauta_Id == id).Select(x => x.Bhuktani_Nibedan).FirstOrDefault();
                string extension = Path.GetExtension(imagepath);
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else
            {
                return null;
            }
            
        }

        public ActionResult Karyadesh(string FiscalYear,string OrgName,string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.KaryadeshReportList=pro.GetPlanningKaryadeshList(FiscalYear, OrgName, ProjectName);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }

        public ActionResult Bhuktani(string FiscalYear, string OrgName, string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.PlanningBhuktaniReportViewModelList = pro.GetPlanningBhuktaniReportList(FiscalYear, OrgName, ProjectName);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }

        public ActionResult BhuktaniIndex(int? id,string fiscalYear, string projectName)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model.Planning_Samjhauta_Id = id;
            model.Fiscal_Year_Record = fiscalYear;
            model.Aayojana_Karyakram = projectName;
            //model.PlanningBhuktaniViewModelList = pro.GetPlanningBhuktaniList();
            model.PlanningBhuktaniViewModelList = pro.GetPlanningBhuktaniListByPlanningSamjhautaId(id??0);
            return View(model);
        }

        public ActionResult CreateBhuktani(int? id)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model = pro.GetPlanningSamjhautaDetailList(id??0).SingleOrDefault();
            if(model.SamjhautaDate!=null)
            {
                model.ManjuriSamjhautaDate= Utility.CommonUtility.getNepaliDate(model.SamjhautaDate);
            }

            model.PlanningBhuktaniKarKattiViewModelList = pro.GetPlanningKarKatti();
            return View(model);
        }

        [HttpPost]
        public ActionResult CreateBhuktani(PlanningBhuktaniViewModel model)
        {

            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.SamjhautaDate = Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.ManjuriSamjhautaDate).ToString();

                model.Planning_Bhuktani_Id = pro.InsertPlanningBhuktani(model);
                TempData["Msg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("BhuktaniReport", new { planningBhuktaniId = model.Planning_Bhuktani_Id });
            }
        }

        public ActionResult EditBhuktani(int id,int id1)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model.Planning_Samjhauta_Id = id1;
            model = pro.GetPlanningBhuktaniById(id);
            if (model.SamjhautaDate != null)
            {
                model.ManjuriSamjhautaDate = Utility.CommonUtility.getNepaliDate(model.SamjhautaDate);
            }
            model.PlanningBhuktaniKarKattiViewModelList = pro.GetPlanningKarKatti();
            return View(model);
        }

        [HttpPost]
        public ActionResult EditBhuktani(PlanningBhuktaniViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.SamjhautaDate = Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.ManjuriSamjhautaDate).ToString();
                pro.UpdatePlanningBhuktani(model);
                TempData["Msg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("BhuktaniIndex", new { id = model.Planning_Samjhauta_Id, fiscalYear=model.Fiscal_Year_Record, projectName=model.Aayojana_Karyakram });
            }
        }

        public ActionResult BhuktaniReport(int planningBhuktaniId)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model.PlanningBhuktaniViewModelList = pro.GetPlanningBhuktaniList(planningBhuktaniId);
            model.OrganizationSetupList = pro.GetOrganizationListForBhuktani();
            return View(model);
        }

        public ActionResult BudgetBiniyojan(string FiscalYear)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.BudgetBiniyojanList = pro.GetBudgetBiniyojanList(FiscalYear);
            return View(model);
        }

        public ActionResult UploadFiles(int id, string wardNo,string fiscalYear)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            PlanningSamjhautaViewModel model‍ = new PlanningSamjhautaViewModel();
            model.FileId = id;
            model.UploadImageList = pro.GetUploadFiles(model.FileId, wardNo, fiscalYear);
            return View(model);
        }

        [HttpPost]
        public ActionResult UploadFiles(PlanningSamjhautaViewModel model, HttpPostedFileBase file)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "";
                return View(model);
            }
            else
            {
                //var filename = System.IO.Path.GetFileName(file.FileName);
                //model.FileName = filename;
                //model.FilePath = SaveImage(file);

                var imagePath = "/Documents/";
                if (file != null)
                {
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(Server.MapPath(imagePath), fileName);
                    file.SaveAs(path);
                    model.FileName = fileName;
                    model.FilePath = imagePath + file.FileName;
                }

                if (pro.UploadRelatedFile(model))
                {
                    TempData["Msg"] = "";
                    return RedirectToAction("UploadFiles");
                }
                else
                {
                    TempData["Msg"] = "";
                    return View(model);
                }
            }
        }

        public string SaveImage(HttpPostedFileBase file)
        {
            string path = null;
            if (file != null)
            {
                string pic = System.IO.Path.GetFileName(file.FileName);
                path = System.IO.Path.Combine(Server.MapPath("~/Documents"), pic);
                file.SaveAs(path);
            }
            return path;
        }

        public FileResult DownloadFiles(int id)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            var imagepath = ent.Upload_File.Where(x => x.Upload_File_Id == id).Select(x => x.File_Path).FirstOrDefault();
            return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Octet, System.IO.Path.GetFileName(imagepath));
        }
         
        public FileResult PreviewFile(int id)
        {
            PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
            var imagepath = ent.Upload_File.Where(x => x.Upload_File_Id == id).Select(x => x.File_Path).FirstOrDefault();
            var imagename = ent.Upload_File.Where(x => x.Upload_File_Id == id).Select(x => x.File_Name).FirstOrDefault();
            string extension = Path.GetExtension(imagename);
            if (extension == ".jpg")
            {
                return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
            }
            else if(extension==".pdf")
            {
                return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Pdf);
            }
            else
            {
                return null;
            }
        }
       
        //public FileResult View(int id)
        //{
        //    var imagepath = ent.Upload_File.Where(x => x.Upload_File_Id == id).Select(x => x.File_Path).FirstOrDefault();
        //    var imagename = ent.Upload_File.Where(x => x.Upload_File_Id == id).Select(x => x.File_Name).FirstOrDefault();
        //    string extension = Path.GetExtension(imagename);
        //    if(extension==".jpg")
        //    {
        //        return File(imagepath, System.Net.Mime.MediaTypeNames.Text.Plain);
        //    }
        //    else
        //    {
        //        return File(imagepath, System.Net.Mime.MediaTypeNames.Application.Pdf);
        //    }
        //}        

        public ActionResult PlanningEntryIndex()
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            model.PlanningEntryViewModelList = pro.GetPlanningEntryList();
            return View(model);
        }

        public ActionResult PlanningEntry()
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult PlanningEntry(PlanningEntryViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "योजनाको फारम सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.InsertPlanningEntry(model);
                TempData["Msg"] = "योजनाको फारम सुरछित भयो। ";
                return RedirectToAction("PlanningEntryIndex");
            }
        }

        public ActionResult EditPlanningEntry(int id)
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            model = pro.UpdatePlanningEntryById(id).SingleOrDefault();
            model.KistaFirstDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "पहिलो").ToList();
            model.KistaSecondDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "दोश्राे").ToList();
            model.KistaThirdDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "तेश्रो").ToList();
            model.KistaLastDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "अन्तिम").ToList();
            return View(model);
        }

        [HttpPost]
        public ActionResult EditPlanningEntry(PlanningEntryViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "योजनाको फारम सुरछित भएन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                pro.UpdatePlanningEntry(model);
                TempData["Msg"] = "योजनाको फारम सुरछित भयो। ";
                return RedirectToAction("PlanningEntryIndex");
            }
        }

        public ActionResult PlanningEntryDetail(int id)
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            model = pro.UpdatePlanningEntryById(id).SingleOrDefault();
            model.KistaFirstDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "पहिलो").ToList();
            model.KistaSecondDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "दोश्राे").ToList();
            model.KistaThirdDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "तेश्रो").ToList();
            model.KistaLastDetailsList = pro.GetKistaDetailListByPlanningEntryId(id).Where(x => x.Kista_Kram == "अन्तिम").ToList();
            return View(model);
        }


        //public ActionResult BarshikPragati()
        //{
        //    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
        //    model.OdaWiseViewModelList = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "O").ToList();
        //    model.AnuSuchiViewModelListByWard = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "O").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).OrderBy(x => x.Ward_No == 0).ThenBy(x => x.Ward_No).ToList();
        //    model.AnuSuchiViewModelListByWorkArea = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "O").GroupBy(x => x.Work_Area).Select(g => g.FirstOrDefault()).ToList();
        //    model.OrganizationSetupList = pro.GetOrganizationList();
        //    model.Organization_Name = model.OrganizationSetupList.Select(x => x.Organization_Name).SingleOrDefault();
        //    model.FiscalYear = model.OdaWiseViewModelList.Select(x => x.FiscalYear).FirstOrDefault();
        //    return View(model);
        //}

        //public ActionResult NagarStrayaDetails()
        //{
        //    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
        //    model.NagarWiseViewModelList = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "N").ToList();
        //    model.AnuSuchiViewModelListByWard = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "N").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).OrderBy(x => x.Ward_No == 0).ThenBy(x => x.Ward_No).ToList();
        //    model.AnuSuchiViewModelListByWorkArea = pro.GetPlanningYojanaListForOdaAndNagar().Where(x => x.Planning_Type == "N").GroupBy(x => x.Work_Area).Select(g => g.FirstOrDefault()).ToList();
        //    model.OrganizationSetupList = pro.GetOrganizationList();
        //    model.Organization_Name = model.OrganizationSetupList.Select(x => x.Organization_Name).SingleOrDefault();
        //    model.FiscalYear = model.NagarWiseViewModelList.Select(x => x.FiscalYear).FirstOrDefault();
        //    return View(model);
        //}
        
        public ActionResult BarshikPragati()
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            model.OdaWiseViewModelList = pro.GetOdaWisePlanningList().Where(x => x.Planning_Type == "O").ToList();
            //model.AnuSuchiViewModelListByWard = pro.GetOdaWisePlanningList().Where(x => x.Planning_Type == "O").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).ToList();
            model.AnuSuchiViewModelListByWard = pro.GetOdaWisePlanningList().Where(x => x.Planning_Type == "O").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).OrderBy(x => x.Ward_No == 0).ThenBy(x => x.Ward_No).ToList();
            model.AnuSuchiViewModelListByWorkArea = pro.GetOdaWisePlanningList().Where(x => x.Planning_Type == "O").GroupBy(x => x.Work_Area).Select(g => g.FirstOrDefault()).ToList();
            model.OrganizationSetupList = pro.GetOrganizationDtailList();
            model.Organization_Name = model.OrganizationSetupList.Select(x => x.Organization_Name).SingleOrDefault();
            model.FiscalYear = model.OdaWiseViewModelList.Select(x => x.FiscalYear).FirstOrDefault();
            return View(model);
        }

        public ActionResult NagarStrayaDetails()
        {
            PlanningEntryViewModel model = new PlanningEntryViewModel();
            model.NagarWiseViewModelList = pro.GetNagarWisePlanningDetailList().Where(x => x.Planning_Type == "N").ToList();
            //model.AnuSuchiViewModelListByWard = pro.GetNagarWisePlanningDetailList().Where(x => x.Planning_Type == "N").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).ToList();
            model.AnuSuchiViewModelListByWard = pro.GetNagarWisePlanningDetailList().Where(x => x.Planning_Type == "N").GroupBy(x => x.Ward_No).Select(g => g.FirstOrDefault()).OrderBy(x => x.Ward_No == 0).ThenBy(x => x.Ward_No).ToList();
            model.AnuSuchiViewModelListByWorkArea = pro.GetNagarWisePlanningDetailList().Where(x => x.Planning_Type == "N").GroupBy(x => x.Work_Area).Select(g => g.FirstOrDefault()).ToList();
            model.OrganizationSetupList = pro.GetOrganizationDtailList();
            model.Organization_Name = model.OrganizationSetupList.Select(x => x.Organization_Name).SingleOrDefault();
            model.FiscalYear = model.NagarWiseViewModelList.Select(x => x.FiscalYear).FirstOrDefault();
            return View(model);
        }

        public string Get_Nepali_English(string NepaliNumericValue)
        {
            if (NepaliNumericValue != null)
            {
                int k = 0;
                string Nepali_Value = NepaliNumericValue;
                string Eng_Value = "";
                string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
                string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
                char[] InputText = NepaliNumericValue.ToString().ToCharArray();
                for (int j = 0; j < Nepali_Value.Length; j++)
                {
                    for (int i = 0; i < 13; i++)
                    {
                        string value = Text_Nepali[i].ToString();
                        string value1 = InputText[j].ToString();
                        if (value == value1)
                        {
                            Eng_Value += Text_English[i].ToString();
                            k++;
                        }
                    }
                    if (k == 0)
                    {
                        return Eng_Value = Nepali_Value;
                    }
                }
                return Eng_Value;
            }
            else
            {
                return 0.ToString();
            }
        }

        public string Get_English_Nepali(string EnglishNumericValue)
        {
            if (EnglishNumericValue == null)
            {
                EnglishNumericValue = " ";
            }
            string Eng_Value = EnglishNumericValue;
            string Nep_value = "";
            string[] Text_Nepali = { "०", "१", "२", "३", "४", "५", "६", "७", "८", "९", ".", "/", "-" };
            string[] Text_English = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "/", "-" };
            char[] Inputtext = Eng_Value.ToString().ToCharArray();
            for (int j = 0; j < Eng_Value.Length; j++)
            {
                for (int i = 0; i < 13; i++)
                {
                    string value = Text_English[i].ToString();
                    string value1 = Inputtext[j].ToString();
                    if (value == value1)
                    {
                        Nep_value += Text_Nepali[i].ToString();
                    }
                }

            }
            return Nep_value;
        }

        public ActionResult Anusuchi2SamjhautaCompleteReport(int id)
        {
            Planning_Samjhauta model = new Planning_Samjhauta();
            model = pro.GetPlanning_SamjhautaByID(id);
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

        public ActionResult PlanningSelectedReport(string FiscalYear, string ProjectName, int? budgetSource, string OdaNagar, int? Page_No, string pageSizeManual)
        {

            int Size_Of_Page = 10;
            int No_Of_Page = (Page_No ?? 1);
            if (FiscalYear != null || ProjectName != null || budgetSource != null || OdaNagar != null)
            {
                ViewBag.FiscalYear = FiscalYear;
                ViewBag.ProjectName = ProjectName;
                ViewBag.budgetSource = budgetSource;
                ViewBag.OdaNagar = OdaNagar;
            }
            var list = pro.PlanningSelectedReport(FiscalYear,ProjectName, budgetSource, OdaNagar);
            if (!String.IsNullOrEmpty(pageSizeManual))
            {
                if (list.Count() > 0)
                    Size_Of_Page = list.Count();
                No_Of_Page = 1;
                var sumOfProjectAmount = list.Where(x => x.Project_estimated_Amount != null).Sum(s => Convert.ToDecimal(NepaliEnglishNumber.Nepali_English(s.Project_estimated_Amount)));
                var sumOfCountigensy = list.Where(x => x.Contegency_Amount != null).Sum(s => Convert.ToDecimal(NepaliEnglishNumber.Nepali_English(s.Contegency_Amount)));
                var sumOfMaramat = list.Where(x=> x.MarmatSambhar_Amount != null).Sum(s => Convert.ToDecimal(NepaliEnglishNumber.Nepali_English(s.MarmatSambhar_Amount)));
                ViewBag.sumOfProjectAmount = NepaliEnglishNumber.English_Nepali(sumOfProjectAmount.ToString());
                ViewBag.sumOfCountigensy = NepaliEnglishNumber.English_Nepali(sumOfCountigensy.ToString());
                ViewBag.sumOfMaramat = NepaliEnglishNumber.English_Nepali(sumOfMaramat.ToString());
            }
            return View(list.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        public ActionResult CompletedPlanning(string FiscalYear, string ProjectName, int? budgetSource, string OdaNagar)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.PlanningSamjhautaViewModelList = pro.PlanningCompleteSelectedReport(FiscalYear, ProjectName, budgetSource, OdaNagar);
            return View(model);
        }

        public ActionResult CompletedReport(int? id)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            if (id != null)
            {
                model = pro.GetCompleatedPlaningReport(id);
                ViewBag.msg = id;
            }
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }

        public ActionResult PlanningWadaReletedReport(string FiscalYear, int? wardNo, int? Page_No, string pageSizeManual)
        {

            int Size_Of_Page = 10;
            int No_Of_Page = (Page_No ?? 1);
            if (FiscalYear != null || wardNo != null)
            {
                ViewBag.FiscalYear = FiscalYear;
                ViewBag.wardNo = wardNo;
            }
            var list = pro.PlanningWardRelatedReport(FiscalYear, wardNo);
            if (!String.IsNullOrEmpty(pageSizeManual))
            {
                if (list.Count() > 0)
                    Size_Of_Page = list.Count();
                No_Of_Page = 1;
                var sumOfProjectAmount = list.Where(x => x.Project_estimated_Amount != null).Sum(s => Convert.ToDecimal(NepaliEnglishNumber.Nepali_English(s.Project_estimated_Amount)));
                ViewBag.sumOfProjectAmount = NepaliEnglishNumber.English_Nepali(sumOfProjectAmount.ToString());
            }
            return View(list.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        public ActionResult PlanningNagarReletedReport(string FiscalYear, int? WorkArea, int? Page_No, string pageSizeManual)
        {

            int Size_Of_Page = 10;
            int No_Of_Page = (Page_No ?? 1);
            if (FiscalYear != null || WorkArea != null)
            {
                ViewBag.FiscalYear = FiscalYear;
                ViewBag.wardNo = WorkArea;
            }
            var list = pro.PlanningNagarRelatedReport(FiscalYear, WorkArea);
            if (!String.IsNullOrEmpty(pageSizeManual))
            {
                if (list.Count() > 0)
                    Size_Of_Page = list.Count();
                No_Of_Page = 1;
                var sumOfProjectAmount = list.Where(x => x.Project_estimated_Amount != null).Sum(s => Convert.ToDecimal(NepaliEnglishNumber.Nepali_English(s.Project_estimated_Amount)));
                ViewBag.sumOfProjectAmount = NepaliEnglishNumber.English_Nepali(sumOfProjectAmount.ToString());
            }
            return View(list.ToPagedList(No_Of_Page, Size_Of_Page));
        }

        public ActionResult bhukataniItem(int? id ,int? samjhautaid )
        {
            ItemViewModel modelss = new ItemViewModel();
            if (id!=null)
            {
                modelss = pro.GetBhuktaniItem(id??0);
                if (true)
                {


                }
            modelss.BhutaniID = id;
                modelss.samjhautaid = samjhautaid??0;
                 return View(modelss);
                //return RedirectToAction("BhuktaniIndex", new { id = samjhautaid });
            }
            else
            {
                return View(modelss);
            }

            
        }
        [HttpPost]
        public ActionResult bhukataniItem(ItemViewModel modelss)
        {
            //ItemViewModel modelss = new ItemViewModel();

            try
            {
                if (modelss.bhukataniItemId > 0)
                {
                    var status = pro.Update(modelss);

                    return RedirectToAction("BhuktaniIndex", new { id = modelss.samjhautaid });
                }
                else
                {
                    var status = pro.Insert(modelss);

                    return RedirectToAction("BhuktaniIndex", new { id = modelss.samjhautaid });

                }

            }
            catch (Exception)
            {

                return RedirectToAction("BhuktaniIndex", new { id = modelss.samjhautaid });
            }
           

        }
        //public ActionResult CompleteProject()
        //{
        //    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
        //    //model = pro
        //    return View();
        //}



        //public ActionResult ExportToExcel()
        //{
        //    PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
        //    model.PlanningSamjhautaViewModelList = pro.GetPlanningSamjhautaList();

        //    Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();
        //    excel.Workbooks.Add();
        //    Microsoft.Office.Interop.Excel._Worksheet workSheet = excel.ActiveSheet;
        //    try
        //    {
        //        workSheet.Cells[1, "A"] = "आर्थिक वर्ष";
        //        workSheet.Cells[1, "B"] = "वडा/नगर";
        //        workSheet.Cells[1, "C"] = "आयोजनाको नाम";
        //        workSheet.Cells[1, "D"] = "आयोजनाको स्थल";
        //        workSheet.Cells[1, "E"] = "सम्झौता गर्ने संस्थाको नाम";
        //        workSheet.Cells[1, "F"] = "शुरु हुने मिति";
        //        workSheet.Cells[1, "G"] = "सम्पन्न हुने मिति";
        //        int row = 2;
        //        foreach (var item in model.PlanningSamjhautaViewModelList)
        //        {
        //            workSheet.Cells[row, "A"] = item.Fiscal_Year_Record;
        //            workSheet.Cells[row, "B"] = item.Planning_Type;
        //            workSheet.Cells[row, "C"] = item.Project_Name;
        //            workSheet.Cells[row, "D"] = item.Project_Place;
        //            workSheet.Cells[row, "E"] = item.Samjhauta_Org_Name;
        //            workSheet.Cells[row, "F"] = item.Project_Start_Date;CompletedPlanning
        //            workSheet.Cells[row, "G"] = item.Project_End_Date;

        //            row++;
        //            //ViewBag.fiscalyear = item.Fiscal_Year_Record;
        //        }
        //        workSheet.Range["A1"].AutoFormat(Microsoft.Office.Interop.Excel.XlRangeAutoFormat.xlRangeAutoFormatClassic1);

        //        string fileName = string.Format(@"{0}\योजना-सम्झौता.xlsx", Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory));

        //        workSheet.SaveAs(fileName);
        //        TempData["Msg"] = string.Format("गरपालिका र उपभोक्ता समिति बीचको सम्झौताको सुचि सुरछित भयो ।", fileName);

        //    }
        //    catch (Exception exception)
        //    {
        //        TempData["Msg"] = "केहि सम्स्या देखियो । केहि समय पछि पुन प्रयास गर्नुहोला ।\n" + exception.Message;
        //    }
        //    finally
        //    {
        //        excel.Quit();
        //        if (excel != null)
        //            System.Runtime.InteropServices.Marshal.ReleaseComObject(excel);

        //        if (workSheet != null)
        //            System.Runtime.InteropServices.Marshal.ReleaseComObject(workSheet);
        //        excel = null;
        //        workSheet = null;
        //        GC.Collect();
        //    }
        //    return RedirectToAction("PlanningSamjhautaIndex");
        //}
        #region triyugaplanning
        public ActionResult TriCreateBhuktani(int? id)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model = pro.GetPlanningSamjhautaDetailList(id ?? 0).SingleOrDefault();
            if (model.SamjhautaDate != null)
            {
                model.ManjuriSamjhautaDate = Utility.CommonUtility.getNepaliDate(model.SamjhautaDate);
            }

            model.PlanningBhuktaniKarKattiViewModelList = pro.GetPlanningKarKatti();
            return View(model);
        }

        [HttpPost]
        public ActionResult triCreateBhuktani(PlanningBhuktaniViewModel model)
        {

            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.SamjhautaDate = Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.ManjuriSamjhautaDate).ToString();

                model.Planning_Bhuktani_Id = pro.InsertPlanningBhuktani(model);
                TempData["Msg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("BhuktaniReport", new { planningBhuktaniId = model.Planning_Bhuktani_Id });
            }
        }

        public ActionResult triEditBhuktani(int id, int id1)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model.Planning_Samjhauta_Id = id1;
            model = pro.GetPlanningBhuktaniById(id);
            if (model.SamjhautaDate != null)
            {
                model.ManjuriSamjhautaDate = Utility.CommonUtility.getNepaliDate(model.SamjhautaDate);
            }
            model.PlanningBhuktaniKarKattiViewModelList = pro.GetPlanningKarKatti();
            return View(model);
        }

        [HttpPost]
        public ActionResult triEditBhuktani(PlanningBhuktaniViewModel model)
        {
            if (!ModelState.IsValid)
            {
                TempData["Msg"] = "भुक्तानी सुरछित हुन सकेन! कृपया पु:न प्रयास गर्नुहोस। ";
                return View(model);
            }
            else
            {
                model.SamjhautaDate = Utility.CommonUtility.GetEnglishDateFromNepaliTest(model.ManjuriSamjhautaDate).ToString();
                pro.UpdatePlanningBhuktani(model);
                TempData["Msg"] = "भुक्तानी सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("BhuktaniIndex", new { id = model.Planning_Samjhauta_Id, fiscalYear = model.Fiscal_Year_Record, projectName = model.Aayojana_Karyakram });
            }
        }
        public JsonResult GetKaraktiforBhuktani(string id)
        {
            string[] result = new string[5];

            try
            {
                result = pro.getkarkatiforbhutain(id);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
            return Json(null, JsonRequestBehavior.AllowGet);
            }
            
        }
        public JsonResult GetAgrimAyaKar(string id)
        {
            string[] result = new string[5];

            try
            {
                result = pro.getAgrimKar(id);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

        }
        public JsonResult GetBahakal (string id)
        {
            string[] result = new string[5];

            try
            {
                result = pro.getBahakal(id);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult BhuktaniAllKistaReport(int? ward)
        {
            PlanningBhuktaniViewModel model = new PlanningBhuktaniViewModel();
            model.ward = ward ?? 0;
            if (ward != null)
            {
                model.PlanningBhuktaniViewModelList = pro.TriGetPlanningBhuktaniList().Where(x=>x.ward== ward).ToList();
            }
            else
            {
                model.PlanningBhuktaniViewModelList = pro.TriGetPlanningBhuktaniList();
            }
           model.OrganizationSetupList = pro.GetOrganizationDtailForBhuktaniList();
           model.Organization_Name = model.OrganizationSetupList.Select(x => x.Organization_Name).SingleOrDefault();
            model.Fiscal_Year_Record = model.PlanningBhuktaniViewModelList.Select(x => x.Fiscal_Year_Record).FirstOrDefault();
            return View(model);
        }
        public ActionResult Delete(int id)
        {
            bool status = false;
            if (id > 0)
            {
                if (pro.SoftDelete(id))
                {
                    status = true;
                    return RedirectToAction("PlanningSamjhautaIndex");
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }
        public ActionResult DeleteBhuktani(int id ,int? ids)
        {
            bool status = false;
            if (id > 0)
            {
                if (pro.SoftDeleteBhuktani(id))
                {
                    status = true;
                    return RedirectToAction("BhuktaniIndex" , new { id=ids});
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }
        #endregion

        public ActionResult KaryadeshShimkot(string FiscalYear, string OrgName, string ProjectName)
        {
            PlanningSamjhautaViewModel model = new PlanningSamjhautaViewModel();
            model.KaryadeshReportList = pro.GetPlanningKaryadeshList(FiscalYear, OrgName, ProjectName);
            model.OrganizationSetupList = pro.GetOrganizationList();
            return View(model);
        }
    }
}