using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoUpdate
{
    class Program
    {
        static void Main(string[] args)
        {
<<<<<<< HEAD
            Console.WriteLine("Server running");
=======
            Console.Clear();
            Console.WriteLine("Running release version!");
>>>>>>> dsafasfa
            while (true)
            {
             
                var input = Console.ReadLine();
                if (input != null && input.Equals("update", StringComparison.InvariantCultureIgnoreCase))
                {
                    Process process = new Process();
                    process.StartInfo.FileName = @"c:\windows\system32\WindowsPowerShell\v1.0\powershell.exe";
                    process.StartInfo.Arguments = @".\update.ps1";
                    process.Start();
                    Environment.Exit(99);
                }
                if (input != null && input.Equals("cls", StringComparison.InvariantCultureIgnoreCase))
                {
                    Console.Clear();
                }
            }
        }
    }
}
