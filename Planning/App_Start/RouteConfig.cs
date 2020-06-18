﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Planning
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Account", action = "Login", id = UrlParameter.Optional }
            );

            //routes.MapRoute(
            //    name: "Default",
            //    url: "{controller}/{action}/{id}/{id1}/{id2}/{id3}/{id4}/{id5}/{id6}/{id7}",
            //    defaults: new { controller = "Account", action = "Login", id = UrlParameter.Optional, id1 = UrlParameter.Optional, id2 = UrlParameter.Optional, id3 = UrlParameter.Optional, id4 = UrlParameter.Optional, id5 = UrlParameter.Optional, id6 = UrlParameter.Optional, id7 = UrlParameter.Optional }
            //);

        }
    }
}
