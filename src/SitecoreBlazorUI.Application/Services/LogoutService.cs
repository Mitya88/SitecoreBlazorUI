namespace SitecoreBlazorUI.Application.Services
{
    using SitecoreBlazorUI.Application.Interfaces;
    using System;
    using System.Collections.Generic;
    using System.Net.Http;
    using System.Threading.Tasks;

    public class LogoutService : ILogoutService
    {
        private readonly HttpClient httpClient;

        public LogoutService(HttpClient client)
        {
            this.httpClient = client ?? throw new ArgumentNullException(nameof(client));
        }

        public async Task<HttpResponseMessage> LogoutAsync(string cookie)
        {
            var formContent = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("__RequestVerificationToken", cookie)
            });

            return await this.httpClient.PostAsync("/sitecore/shell/api/sitecore/Authentication/Logout?sc_database=master", formContent);
        }
    }
}
