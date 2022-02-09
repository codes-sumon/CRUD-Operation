using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Create_items.AppCode
{
    public class createItemInfo
    {

        public createItemInfo()
        {
            //
            // TODO: Add constructor logic here
            //
        }



        public createItemInfo(DataRow dr)
        {
            if (dr["id"].ToString() != String.Empty)
            {
                this.ID = dr["id"].ToString();
            }
            if (dr["itemCode"].ToString() != String.Empty)
            {
                this.itemCode = dr["itemCode"].ToString();
            }
            if (dr["itemName"].ToString() != String.Empty)
            {
                this.itemFulName = dr["itemName"].ToString();
            }
            if (dr["itemShortName"].ToString() != String.Empty)
            {
                this.itemShortName = dr["itemShortName"].ToString();
            }
        }

        public string itemCode { get; set; }
        public string itemFulName { get; set; }
        public string itemShortName { get; set; }
        public string ID { get; set; }

    }

}