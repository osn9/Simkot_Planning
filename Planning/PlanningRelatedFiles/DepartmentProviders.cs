using log4net;
using PropertyManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PropertyManagement.Providers
{
    public class DepartmentProviders
    {
        public static readonly ILog Log = LogManager.GetLogger(typeof(DepartmentProviders).Namespace);
        InvMgmtEntities ent = new InvMgmtEntities();

        public int GetTotalItemCount()
        {
            return ent.Departments.Count();
        }

        public List<DepartmentModels> GetDepartmentList(int page, int pagesize)
        {
            var model = new List<DepartmentModels>();
            try
            {
                var collection = ent.Departments.OrderBy(x => x.DepartmentId).Skip((page - 1) * pagesize).Take(pagesize);

                foreach (var item in collection)
                {
                    var data = new DepartmentModels()
                    {
                        DepartmentId = item.DepartmentId,
                        DepartmentName = item.DepartmentName,
                        WarehouseId = item.WarehouseId,
                      //  warehouseName = item.Warehouses.Title
                    };
                    model.Add(data);
                }

            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on GetDepartmentList Data Auction  with error message: {0}",
                                         ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));
            }

            return model;
        }

        public DepartmentModels GetDepartmentData(int DepartmentId)
        {
            var model = new DepartmentModels();
            try
            {

                var item = ent.Departments.Single(x => x.DepartmentId == DepartmentId);
                model = new DepartmentModels()
               {
                   DepartmentId = item.DepartmentId,
                   DepartmentName = item.DepartmentName,
                   WarehouseId = item.WarehouseId,
                 //  warehouseName = item.Warehouses.Title
               };
            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on GetDepartmentData Data Auction  with error message: {0}",
                          ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));
            }


            return model;
        }

        public void Insert(DepartmentModels model)
        {
            try
            {
                var objToSave = new Departments()
                  {
                      DepartmentName = model.DepartmentName,
                      WarehouseId = model.WarehouseId
                  };
                ent.Departments.Add(objToSave);
                ent.SaveChanges();
            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on  Insert DepartmentData Data Auction  with error message: {0}",
                         ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));
            }

        }

        public void Update(DepartmentModels model)
        {
            try
            {
                var objToEdit = ent.Departments.Single(x => x.DepartmentId == model.DepartmentId);
                objToEdit.DepartmentName = model.DepartmentName;
                objToEdit.WarehouseId = model.WarehouseId;
                ent.Entry(objToEdit).State = System.Data.EntityState.Modified;
                ent.SaveChanges();
            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on  Update DepartmentData Data Auction  with error message: {0}",
                    ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));

            }

        }

        public void Delete(int DepartmentId)
        {
            try
            {
                var objToDelete = ent.Departments.Single(x => x.DepartmentId == DepartmentId);
                ent.Departments.Remove(objToDelete);
                ent.SaveChanges();

            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on  Delete DepartmentData Data Auction  with error message: {0}",
                   ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));
            }

        }

        public List<UserProfile> GetDepartmentOfficerList()
        {
            var list = new List<UserProfile>();
            try
            {
                var ctx = new UsersContext();
                list = ctx.UserProfiles.ToList();
            }
            catch (Exception ex)
            {
                Log.Error(string.Format("Error! on  Delete DepartmentData Data Auction  with error message: {0}",
                 ex.Message));
                Log.Error(string.Format("Error with exception: {0}", ex.StackTrace));
            }
            return list;


        }
    }
}