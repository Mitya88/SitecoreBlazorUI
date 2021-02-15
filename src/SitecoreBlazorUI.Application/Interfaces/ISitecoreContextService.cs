namespace SitecoreBlazorUI.Application.Interfaces
{
    using SitecoreBlazorUI.Models;
    using System.Threading.Tasks;

    public interface ISitecoreContextService
    {
        Task<ContextApiResponse> GetContextAsync();
    }
}
