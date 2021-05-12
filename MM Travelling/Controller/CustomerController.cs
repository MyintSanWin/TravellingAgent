using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MM_Travelling.Model;

namespace MM_Travelling.Controller
{
    public class CustomerController
    {
        public void SignUpCustomer(CustomerModel customer)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                tbl_Customer Customer = new tbl_Customer();
                Customer.CustomerName = customer.CustomerName;
                Customer.NRC = customer.NRC;
                Customer.Password = customer.Password;
                Customer.Gender = customer.Gender;
                Customer.Email = customer.Email;
                Customer.Phone = customer.Phone;
                Customer.Address = customer.Address;
                //Customer.Image = customer.Image;

                db.tbl_Customers.InsertOnSubmit(Customer);
                db.SubmitChanges();


            }
        }

        public bool CheckCustomerEmail(string email)
        {

            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = (from a in db.tbl_Customers where a.Email == email select a).ToArray();
                if (data.Count() > 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }


            }
        }

        public bool CustomerLogIn(string email, string password)
        {
            using (DbContextDataContext db = new DbContextDataContext())
            {
                var data = db.CustomerLogIn(email, password).ToArray();
                            if (data.Count() == 1)
                            {
                                return true;
                            }
                            else
                            {
                                return false;
                            }
                        }
                    }
                }
            }
    