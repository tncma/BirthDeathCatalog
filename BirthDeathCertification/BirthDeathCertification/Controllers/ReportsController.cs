using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Helpers;
using BirthDeathCertification.Models;
using DotNet.Highcharts;


namespace BirthDeathCertification.Controllers
{
    public class ReportsController : Controller
    {
        //
        // GET: /Reports/

        public ActionResult Index()
        {
            HospitalBirthData model = new HospitalBirthData();
            model.Charts = new List<DotNet.Highcharts.Highcharts>();

            DotNet.Highcharts.Highcharts g1 = new DotNet.Highcharts.Highcharts("chart");
            DotNet.Highcharts.Highcharts g2 = new DotNet.Highcharts.Highcharts("chart");
            model.Charts.Add(g1);
            model.Charts.Add(g2);
            return View(model);
        }

    }
}
