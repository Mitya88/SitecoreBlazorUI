namespace SitecoreBlazorUI.Application.Interfaces
{
    using System.Net.Http;
    using System.Threading.Tasks;

    public interface ILogoutService
    {
        Task<HttpResponseMessage> LogoutAsync(string cookie);
    }
}
