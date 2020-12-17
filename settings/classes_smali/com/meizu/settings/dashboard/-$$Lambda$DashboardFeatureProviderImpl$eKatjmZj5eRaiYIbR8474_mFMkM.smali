.class public final synthetic Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eKatjmZj5eRaiYIbR8474_mFMkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/preference/Preference;

.field private final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eKatjmZj5eRaiYIbR8474_mFMkM;->f$0:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eKatjmZj5eRaiYIbR8474_mFMkM;->f$1:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eKatjmZj5eRaiYIbR8474_mFMkM;->f$0:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eKatjmZj5eRaiYIbR8474_mFMkM;->f$1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p0}, Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$3(Landroid/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
