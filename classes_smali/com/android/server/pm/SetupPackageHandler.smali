.class public Lcom/android/server/pm/SetupPackageHandler;
.super Ljava/lang/Object;
.source "SetupPackageHandler.java"


# static fields
.field public static final SETUP_PACKAGE_COMPONENT:Ljava/lang/String; = "com.meizu.setup.activity.SetupLanguageActivity"

.field public static final SETUP_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.setup"

.field private static disablePackageBeforeSetup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isSetupPackageDisable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    .line 27
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.configupdater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.ext.shared"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.onetimeinitializer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.printservice.recommendation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.partnersetup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.google.android.syncadapters.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.meizu.safe"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.meizu.flyme.service.find"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.flyme.systemuitools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const-string v1, "com.meizu.flyme.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableListToArray()[Ljava/lang/String;
    .registers 2

    .line 76
    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static initValueFromSettingsLocked(Ljava/lang/String;Lcom/android/server/pm/Settings;)V
    .registers 6
    .param p0, "tag"  # Ljava/lang/String;
    .param p1, "settings"  # Lcom/android/server/pm/Settings;

    .line 46
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v1, "com.meizu.setup"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 47
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_44

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    sput-boolean v2, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    .line 49
    sget-boolean v2, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    if-nez v2, :cond_2d

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 51
    .local v1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    .line 52
    const-string v2, "com.meizu.setup.activity.SetupLanguageActivity"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    .line 55
    .end local v1  # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pms init isSetupPackageDisable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_44
    return-void
.end method

.method public static isPackageDisabled(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"  # Ljava/lang/String;

    .line 69
    sget-boolean v0, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/server/pm/SetupPackageHandler;->disablePackageBeforeSetup:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 69
    :goto_15
    return v0
.end method

.method public static setValueByPackageStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "tag"  # Ljava/lang/String;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "state"  # I

    .line 61
    sget-boolean v0, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    if-nez v0, :cond_17

    const-string v0, "com.meizu.setup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    if-ne p2, v0, :cond_17

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/SetupPackageHandler;->isSetupPackageDisable:Z

    .line 63
    const-string v0, "disable setupwizard app"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_17
    return-void
.end method
