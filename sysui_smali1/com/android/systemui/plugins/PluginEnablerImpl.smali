.class public Lcom/android/systemui/plugins/PluginEnablerImpl;
.super Ljava/lang/Object;
.source "PluginEnablerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginEnabler;


# static fields
.field private static final CRASH_DISABLED_PLUGINS_PREF_FILE:Ljava/lang/String; = "auto_disabled_plugins_prefs"


# instance fields
.field private final mAutoDisabledPrefs:Landroid/content/SharedPreferences;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "auto_disabled_plugins_prefs"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mAutoDisabledPrefs:Landroid/content/SharedPreferences;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getDisableReason(Landroid/content/ComponentName;)I
    .registers 3
    .annotation build Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/PluginEnablerImpl;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mAutoDisabledPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isEnabled(Landroid/content/ComponentName;)Z
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public setDisabled(Landroid/content/ComponentName;I)V
    .registers 7
    .param p2  # I
        .annotation build Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_a

    move v2, v0

    goto :goto_b

    :cond_a
    const/4 v2, 0x2

    .line 51
    :goto_b
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    if-eqz v1, :cond_24

    .line 53
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mAutoDisabledPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_35

    .line 55
    :cond_24
    iget-object p0, p0, Lcom/android/systemui/plugins/PluginEnablerImpl;->mAutoDisabledPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_35
    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/plugins/PluginEnablerImpl;->setDisabled(Landroid/content/ComponentName;I)V

    return-void
.end method
