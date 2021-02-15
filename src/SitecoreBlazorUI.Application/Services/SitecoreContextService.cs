using SitecoreBlazorUI.Application.Interfaces;
using SitecoreBlazorUI.Models;
namespace SitecoreBlazorUI.Application.Services
{
    using System;
    using System.Net.Http;
    using System.Net.Http.Json;
    using System.Threading.Tasks;

    public class SitecoreContextService : ISitecoreContextService
    {
        private readonly HttpClient httpClient;

        public SitecoreContextService(HttpClient client)
        {
            this.httpClient = client ?? throw new ArgumentNullException(nameof(client));
        }

        public async Task<ContextApiResponse> GetContextAsync()
        {
            var result = await this.httpClient.GetAsync("/sitecore/api/ssc/sci/context/-/getcontext?sc_site=shell");

           return await result.Content.ReadFromJsonAsync<ContextApiResponse>();
        }
    }
}
