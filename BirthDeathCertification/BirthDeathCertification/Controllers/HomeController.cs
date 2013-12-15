using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BirthDeathCertification.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to Birth Death Catalog";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
