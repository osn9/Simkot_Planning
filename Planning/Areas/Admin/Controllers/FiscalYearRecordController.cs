using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models;
using Planning.Planning.Entities;
using System.Data;
using Newtonsoft.Json.Linq;

namespace Planning.Areas.Admin.Controllers
{
    [Authorize]
    public class FiscalYearRecordController : Controller
    {
        PLANNING_OCT_03Entities ent = new PLANNING_OCT_03Entities();
        public ActionResult Index()
        {
            FiscalYearRecordViewModel model = new FiscalYearRecordViewModel();
            model.FiscalYearRecordViewModelList = (from i in ent.Fiscal_Year_Record
                                                    select new FiscalYearRecordViewModel
                                                    {
                                                        Fiscal_Year_Record_Id = i.Fiscal_Year_Record_Id,
                                                        Title = i.Title,
                                                        IsActive = i.IsActive??false,
                                                    }).ToList();

            return View(model.FiscalYearRecordViewModelList);
        }

        ////test
        //public JsonResult fiscalYearAllRecords()
        //{
        //    var list = ent.Fiscal_Year_Record.Select(x => new FiscalYearRecordViewModel()
        //    {
        //        Fiscal_Year_Record_Id = x.Fiscal_Year_Record_Id,
        //        Title = x.Title,
        //        IsActive = x.IsActive ?? false
        //    }).ToList();
        //    return Json(new { data = list }, JsonRequestBehavior.AllowGet);
        //}

        [HttpPost]
        public ActionResult EditTableData(int id, string propertyName, string value)
        {
            var status = false;
            var message = "";
            object updateValue = value;
            //Update data to database 
            using (var con = new PLANNING_OCT_03Entities())
            {
                var records = con.Fiscal_Year_Record.Find(id);
                
                bool isValid = true;

                if (propertyName == "IsActive")
                {
                    int status1 = Convert.ToInt16(value);
                    if (status1 == 1)
                    {
                        var activeList = con.Fiscal_Year_Record.Where(x => x.IsActive == true).FirstOrDefault();
                        if (activeList != null)
                        {
                            activeList.IsActive = false;
                            con.Entry(activeList).State = System.Data.Entity.EntityState.Modified;
                            con.SaveChanges();
                        }
                        updateValue = true;
                    }
                    else if (status1 == 0)
                    {
                        updateValue = false;
                    }
                    else
                    {
                        isValid = false;
                    }
                }

                if (records != null && isValid)
                {
                    con.Entry(records).Property(propertyName).CurrentValue = updateValue;
                    con.SaveChanges();
                    status = true;                    
                }
                else
                {
                    message = "Error!";
                }
            }

            var response = new { value = updateValue, status = status, message = message };
            JObject o = JObject.FromObject(response);
            //return Content(o.ToString());
            return Json(new { value = updateValue, status = status, message = message }, JsonRequestBehavior.AllowGet);
        }


        public ActionResult Create()
        {
            FiscalYearRecordViewModel model = new FiscalYearRecordViewModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(FiscalYearRecordViewModel model)
        {
            var data = ent.Fiscal_Year_Record.ToList();
            if (data.Count > 0)
            {
                foreach (var item in data)
                {
                    item.IsActive = false;
                    ent.SaveChanges();
                }
            }

            if (ModelState.IsValid)
            {
                try
                {
                    var Fiscal_Year_RecordEntity = new Fiscal_Year_Record()
                    {
                        Title = model.Title,
                        IsActive = true,
                        CreatedBy = model.CreatedBy,
                        CreatedDate = DateTime.Now,
                    };
                    ent.Fiscal_Year_Record.Add(Fiscal_Year_RecordEntity);
                    ent.SaveChanges();
                    TempData["Msg"] = "आर्थिक वर्ष सफलतापूर्वक सुरछित भयो। ";
                    return RedirectToAction("Index");
                }
                catch (Exception )
                {
                }
            }
            else
            {
                return View(model);
            }
            return RedirectToAction("Index");
        }

        public ActionResult Edit(int id)
        {
            FiscalYearRecordViewModel model = new FiscalYearRecordViewModel();
            var data = ent.Fiscal_Year_Record.Where(x => x.Fiscal_Year_Record_Id == id).SingleOrDefault();
            model.Fiscal_Year_Record_Id = data.Fiscal_Year_Record_Id;
            model.Title = data.Title;
            model.IsActive = data.IsActive??false;
            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(FiscalYearRecordViewModel model)
        {

            if(model.IsActive==true)
            {
                var result = ent.Fiscal_Year_Record.Where(x => x.IsActive == true).ToList();
                if (result.Count() == 1)
                {
                    TempData["Msg"] = "पहिला सक्रिय अार्थिक वर्षलाई निष्क्रिय गर्नुहोस र यो अार्थिक वर्षलाई सक्रिय गर्नुहोस।";
                    return View(model);
                }
                else
                {
                    var data = ent.Fiscal_Year_Record.Where(x => x.Fiscal_Year_Record_Id == model.Fiscal_Year_Record_Id).SingleOrDefault();
                    data.Fiscal_Year_Record_Id = model.Fiscal_Year_Record_Id;
                    data.Title = model.Title;
                    data.IsActive = model.IsActive;
                    data.UpdatedBy = model.UpdatedBy;
                    data.UpdatedDate = DateTime.Now;
                    ent.SaveChanges();
                    TempData["Msg"] = "आर्थिक वर्ष सफलतापूर्वक सुरछित भयो। ";
                    return RedirectToAction("Index");
                }
            }
            else
            {
                var data = ent.Fiscal_Year_Record.Where(x => x.Fiscal_Year_Record_Id == model.Fiscal_Year_Record_Id).SingleOrDefault();
                data.Fiscal_Year_Record_Id = model.Fiscal_Year_Record_Id;
                data.Title = model.Title;
                data.IsActive = model.IsActive;
                ent.SaveChanges();
                TempData["Msg"] = "आर्थिक वर्ष सफलतापूर्वक सुरछित भयो। ";
                return RedirectToAction("Index");
            }
        }

    }
}