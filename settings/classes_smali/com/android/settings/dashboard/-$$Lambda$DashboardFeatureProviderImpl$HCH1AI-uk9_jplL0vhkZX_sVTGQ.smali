.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/preference/Preference;

.field private final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;->f$1:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$HCH1AI-uk9_jplL0vhkZX_sVTGQ;->f$1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$3(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
