.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private final synthetic f$1:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$1:Lcom/android/settingslib/drawer/Tile;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$UvJ8-OPK0AmeGQfPSjZ3lJhOyxc;->f$2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$4$DashboardFeatureProviderImpl(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)V

    return-void
.end method
