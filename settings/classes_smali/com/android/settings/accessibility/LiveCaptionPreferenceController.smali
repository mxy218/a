.class public Lcom/android/settings/accessibility/LiveCaptionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LiveCaptionPreferenceController.java"

# interfaces
.implements Lcom/meizu/settings/core/PreferenceControllerMixin;


# static fields
.field static final LIVE_CAPTION_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.live_caption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 3

    .line 52
    iget-object p0, p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 54
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x3

    :goto_13
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 62
    sget-object p0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
