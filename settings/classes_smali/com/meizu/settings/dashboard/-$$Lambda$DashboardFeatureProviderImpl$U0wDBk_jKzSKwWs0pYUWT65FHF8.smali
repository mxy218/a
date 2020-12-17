.class public final synthetic Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$U0wDBk_jKzSKwWs0pYUWT65FHF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/preference/Preference;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/Preference;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$U0wDBk_jKzSKwWs0pYUWT65FHF8;->f$0:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$U0wDBk_jKzSKwWs0pYUWT65FHF8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$U0wDBk_jKzSKwWs0pYUWT65FHF8;->f$0:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$U0wDBk_jKzSKwWs0pYUWT65FHF8;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindSummary$1(Landroid/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
