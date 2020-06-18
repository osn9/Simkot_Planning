using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Planning.Areas.Admin.Models;
using Planning.Planning.Entities;

namespace Planning.Areas.Admin.Providers.SetupProvider
{
    public class ItemProvider
    {
     //   ItemViewModel newa = new ItemViewModel();
        public List<ItemViewModel> GetList()
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var records = con.Items.Where(x => x.Status == true)
                    .Select(x => new ItemViewModel()
                    {
                        itemId = x.itemId,
                        name = x.name,
                        ekainame = x.ekainame,

                    }).ToList();
                return records;
            }
        }

        public ItemViewModel GetData(int id )
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var records = con.Items.Where(x => x.Status == true && x.itemId==id)
                    .Select(x => new ItemViewModel()
                    {
                        itemId = x.itemId,
                        name = x.name,
                        ekainame = x.ekainame,

                    }).FirstOrDefault();
                return records;
            }
        }

        public bool Insert(ItemViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                Item area = new Item()
                {
                   
                    Status = true,
                    itemId = model.itemId,
                    name = model.name,
                    ekainame = model.ekainame,
                };
                con.Items.Add(area);
                int i = con.SaveChanges();
                if (i > 0)
                    return true;
            }
            return false;
        }

        public bool Update(ItemViewModel model)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Items.Where(x => x.itemId == model.itemId).FirstOrDefault();
                if (record != null)
                {
                    record.name = model.name;
                    record.ekainame = model.ekainame;

                    con.Entry(record).State = System.Data.Entity.EntityState.Modified;
                    int i = con.SaveChanges();
                    if (i > 0)
                        return true;
                }
            }
            return false;
        }

        public bool SoftDelete(int id)
        {
            using (PLANNING_OCT_03Entities con = new PLANNING_OCT_03Entities())
            {
                var record = con.Items.Where(x => x.itemId == id).FirstOrDefault();
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