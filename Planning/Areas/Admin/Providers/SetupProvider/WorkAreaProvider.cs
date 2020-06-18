using Planning.Areas.Admin.Models;
using Planning.Planning.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Planning.Areas.Admin.Providers.SetupProvider
{
    public class WorkAreaProvider
    {
        public List<WorkAreaViewModel> GetAllWorkAreaList()
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var records = con.Work_Area.Where(x => x.Status == true)
                    .Select(x => new WorkAreaViewModel()
                    {
                        Work_Area_Id = x.Work_Area_Id,
                        Work_Area_Name = x.Work_Area_Name,
                    }).ToList();
                return records;
            }
        }

        public bool InsertWorkArea(WorkAreaViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                Work_Area area = new Work_Area()
                {
                    Work_Area_Name = model.Work_Area_Name,
                    Status = true,
                };
                con.Work_Area.Add(area);
                int i = con.SaveChanges();
                if (i > 0)
                    return true;
            }
                return false;
        }

        public bool UpdateWorkArea(WorkAreaViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Work_Area.Where(x => x.Work_Area_Id == model.Work_Area_Id).FirstOrDefault();
                if (record != null)
                {
                    record.Work_Area_Name = model.Work_Area_Name;
                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }                
            }
            return false;
        }

        public bool SoftDeleteWorkArea(int id)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Work_Area.Where(x => x.Work_Area_Id == id).FirstOrDefault();
                if (record != null)
                {
                    record.Status = false;
                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }
            }
            return false;
        }

    }
}