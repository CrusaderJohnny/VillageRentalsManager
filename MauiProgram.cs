﻿using Microsoft.Extensions.Logging;
using VillageRentalsManager.Domain;
using VillageRentalsManager.Persistence;

namespace VillageRentalsManager
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

#if DEBUG
    		builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif
            var dataBaseScript = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "../../../../..", "resources", "sql", "dataBaseScript.sql");
            var dbPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "../../../../..", "resources", "data", "villagerentalsdatabase.db");
            builder.Services.AddSingleton<ClientManager>(s => ActivatorUtilities.CreateInstance<ClientManager>(s, dbPath));
            builder.Services.AddSingleton<EquipmentCategoryManagement>(s => ActivatorUtilities.CreateInstance<EquipmentCategoryManagement>(s, dbPath));
            builder.Services.AddSingleton<EquipmentManager>(s => ActivatorUtilities.CreateInstance<EquipmentManager>(s, dbPath));
            builder.Services.AddSingleton<ReservationManager>(s => ActivatorUtilities.CreateInstance<ReservationManager>(s, dbPath));
            builder.Services.AddSingleton<EquipmentCategory>();
            builder.Services.AddSingleton<Equipment>();
            builder.Services.AddSingleton<Client>();
            return builder.Build();
        }
    }
}
