.class public Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShortcutManagerThrottlingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mShortcutService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->getShortCutService()Landroid/content/pm/IShortcutService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    return-void
.end method

.method private getShortCutService()Landroid/content/pm/IShortcutService;
    .registers 1

    :try_start_0
    const-string/jumbo p0, "shortcut"

    .line 78
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private resetShortcutManagerThrottling()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v0, :cond_5

    return-void

    .line 67
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1211b7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string v0, "ShortcutMgrPrefCtrl"

    const-string v1, "Failed to reset rate limiting"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "reset_shortcut_manager_throttling"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "reset_shortcut_manager_throttling"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->resetShortcutManagerThrottling()V

    const/4 p0, 0x1

    return p0
.end method
