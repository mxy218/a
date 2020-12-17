.class public final synthetic Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$3:Landroid/preference/Preference;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/preference/Preference;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$0:Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$2:Lcom/android/settingslib/drawer/Tile;

    iput-object p4, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$3:Landroid/preference/Preference;

    iput p5, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$4:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8

    iget-object v0, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$0:Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$2:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$3:Landroid/preference/Preference;

    iget v4, p0, Lcom/meizu/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$QpubnoEmqFaROAS0RN0a1jSRYNI;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindPreferenceToTile$0$DashboardFeatureProviderImpl(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/preference/Preference;ILandroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
