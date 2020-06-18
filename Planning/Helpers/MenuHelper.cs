using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace Planning.Helpers
{
    public static class MenuHelper
    {
        public static MvcHtmlString MenuLink(this HtmlHelper htmlHelper,
                                        string linkText,
                                        string actionName,
                                        string controllerName
                                        )
        {

            string currentAction = htmlHelper.ViewContext.RouteData.GetRequiredString("action");
            string currentController = htmlHelper.ViewContext.RouteData.GetRequiredString("controller");
            
            if (actionName == currentAction && controllerName == currentController)
            {
                return htmlHelper.ActionLink(linkText, actionName, controllerName, null, new { @class = "active" });
            }
            if ((currentAction == "Edit" || currentAction == "Create") && controllerName == currentController)
            {
                return htmlHelper.ActionLink(linkText, actionName, controllerName, null, new { @class = "active" });
            }

            return htmlHelper.ActionLink(linkText, actionName, controllerName);


        }
        public static MvcHtmlString MenuLinkWithId(this HtmlHelper htmlHelper,
                                        string linkText,
                                        string actionName,
                                        string controllerName,
                                        object values,
                                        object htmlAttributes


                                        )
        {

            string currentAction = htmlHelper.ViewContext.RouteData.GetRequiredString("action");
            string currentController = htmlHelper.ViewContext.RouteData.GetRequiredString("controller");

            if (actionName == currentAction && controllerName == currentController)
            {
                return htmlHelper.ActionLink(linkText, actionName, controllerName, values, new { @class = "active" });
            }
            if (actionName == "Edit" && controllerName == currentController)
            {
                return htmlHelper.ActionLink(linkText, actionName, controllerName, values, new { @class = "active" });
            }

            return htmlHelper.ActionLink(linkText, actionName, controllerName, values, null);


        }

        public static string CurrentDateStatus(DateTime StartDate, DateTime EndDate)
        {
            string ReturnCode = string.Empty;
            DateTime CurrentDate = DateTime.Today;

            int totalDays = Convert.ToInt32((StartDate - CurrentDate).TotalDays);
            int TotalDaysLessThanEndDate = Convert.ToInt32((EndDate - CurrentDate).TotalDays);

            int LessThanStartDate = Convert.ToInt32((CurrentDate - StartDate).TotalDays);

            if (totalDays > 0)
            {
                ReturnCode = "info";
            }
            else if (LessThanStartDate > 0 && TotalDaysLessThanEndDate > 0)
            {
                ReturnCode = "success";
            }
            else
            {
                ReturnCode = "warning";
            }
            return ReturnCode;

        }

    }
}