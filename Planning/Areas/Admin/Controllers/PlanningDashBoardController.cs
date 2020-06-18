using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Planning.Areas.Admin.Models.PasswordChangeViewModel;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Planning.Models;
using System.Threading.Tasks;
using Planning.Areas.Admin.Models;
using Planning.Planning.Entities;
using Planning.Areas.Admin.Providers;

namespace Planning.Areas.Admin.Controllers
{
    [Authorize]
    public class PlanningDashBoardController : Controller
    {
        PlanningDashboardProvider pro = new PlanningDashboardProvider();
        // GET: Admin/PlanningDashBoard
        public ActionResult Index()
        {
            PlanningDashBoardViewModel model = new PlanningDashBoardViewModel();
            model = pro.GetModelList();
            return View(model);            
        }

        [AllowAnonymous]
        public ActionResult ResetUserPassword(string userId, string UserName)
        {
            PasswordChangeViewModel model = new PasswordChangeViewModel();
            model.UserId = User.Identity.GetUserId().ToString();
            model.Email = User.Identity.GetUserName().ToString();
            return View(model);
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ResetUserPassword(PasswordChangeViewModel model)
        {
            if (ModelState.IsValid)
            {
                UserManager<IdentityUser> userManager = new UserManager<IdentityUser>(new UserStore<IdentityUser>());
                if (userManager.HasPassword(model.UserId))
                {
                    userManager.RemovePassword(model.UserId);
                    userManager.AddPassword(model.UserId, model.confirmPassword);
                }
                TempData["PasswordResetMsg"] = "पासवर्ड सफलतापूर्वक रिसेट भएको छ । तपाईको पासवर्ड:" + model.confirmPassword‌‌;
                TempData["MessageValue"] = "1";

                return RedirectToAction("Index");
            }

            TempData["PasswordResetMsg"] = "प्रयोगकर्ताको विवरणहरू मिलेन। कृपया केहि मिनेटमा पुनः प्रयास गर्नुहोस् ।";
            TempData["MessageValue"] = "0";
            return RedirectToAction("Index");
        }

        [AllowAnonymous]
        public ActionResult NewUserRegister()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> NewUserRegister(NewUserRegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email };
                var result = await UserManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                    TempData["NewUser"] = "नयाँ प्रयोगकर्ता सफलतापूर्वक दर्ता भएको छ । ";
                    return View(model);
                }
                else
                {
                    AddErrors(result);
                    TempData["NewUser"] = "केहि समस्या देखियो । कृपया केहि मिनेटमा पुनः प्रयास गर्नुहोस ।";
                    return View(model);
                }
            }
            else
            {
                TempData["NewUser"] = "केहि समस्या देखियो । कृपया केहो मिनेटमा पुनः प्रयास गर्नुहोस ।";
                return View(model);
            }
        }



        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;
        
        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }


    }
}