using System;
using System.IO;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json.Linq;

namespace CSharpMicroservice
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var host = new WebHostBuilder()
                .UseKestrel()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseStartup<Startup>()
                .Build();

            host.Run();
        }
    }

    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
        }

        public void Configure(IApplicationBuilder app)
        {
            app.Run(async (context) =>
            {
                if (context.Request.Path == "/transform" && context.Request.Method == "POST")
                {
                    // Get the JSON data from the request
                    string requestBody;
                    using (var reader = new StreamReader(context.Request.Body))
                    {
                        requestBody = await reader.ReadToEndAsync();
                    }
                    var data = JObject.Parse(requestBody);

                    // Add your custom data transformations here
                    var transformedData = "(" + string.Join(", ", data.Values()) + ")";

                    // Return the transformed data as a JSON string
                    await context.Response.WriteAsync(transformedData);
                }
                else
                {
                    await context.Response.WriteAsync("Hello World!");
                }
            });
        }
    }
}
