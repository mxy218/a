.class public Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MainlineModuleVersionPreferenceController.java"


# static fields
.field static final MODULE_UPDATE_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MainlineModuleControl"


# instance fields
.field private mModuleVersion:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MODULE_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 45
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->initModules()V

    return-void
.end method

.method private initModules()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x104015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 58
    :try_start_f
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    const-string v1, "MainlineModuleControl"

    const-string v2, "Failed to get mainline version."

    .line 62
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    :cond_26
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x3

    :goto_b
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 4

    .line 70
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 76
    sget-object p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_18

    :cond_14
    const/4 p0, 0x0

    .line 78
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_18
    return-void
.end method
