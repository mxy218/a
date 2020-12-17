.class public Lcom/android/server/GuestModeHelper;
.super Ljava/lang/Object;
.source "GuestModeHelper.java"


# static fields
.field private static final ACTIVITY_NAME_POWER_SAVE_LAUNCHER:Ljava/lang/String; = "com.meizu.powersave.PowerSaveMode"

.field private static final ACTIVITY_NAME_WELLCOME_PAGE:Ljava/lang/String; = "com.flyme.systemuitools.wellcomepage.WellcomePage"

.field private static final DEBUG:Z = true

.field private static final DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

.field private static final PACKAGE_NAME_FLYME_LAUNCHER:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field private static final PACKAGE_NAME_POWER_SAVE:Ljava/lang/String; = "com.meizu.powersave"

.field private static final PACKAGE_NAME_SETUP:Ljava/lang/String; = "com.meizu.setup"

.field private static final PACKAGE_NAME_SYSTEM_UI_TOOLS:Ljava/lang/String; = "com.flyme.systemuitools"

.field private static final TAG:Ljava/lang/String; = "GuestModeHelper"

.field private static final USER_ID_UNAVAIABLE:I = 0x186a1


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 30
    const-string v0, "com.meizu.safe"

    const-string v1, "com.meizu.setup"

    const-string v2, "com.aliyun.SecurityCenter"

    const-string v3, "com.meizu.customizecenter"

    const-string v4, "com.meizu.voiceassistant"

    const-string v5, "com.mediatek.op09.plugin"

    const-string v6, "com.meizu.cloud"

    const-string v7, "com.android.meizu.audioprofiles"

    const-string v8, "com.meizu.flyme.childrenlauncher"

    const-string v9, "com.meizu.flyme.update"

    const-string v10, "com.meizu.feedback"

    const-string v11, "com.meizu.net.pedometer"

    const-string v12, "com.meizu.assistant"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/GuestModeHelper;->DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/server/GuestModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/GuestModeHelper$1;-><init>(Lcom/android/server/GuestModeHelper;)V

    iput-object v0, p0, Lcom/android/server/GuestModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 86
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GuestModeHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/GuestModeHelper;->mUserManager:Landroid/os/UserManager;

    .line 89
    const-string v0, "GuestModeHelper"

    const-string v1, "GuestModeMonitor start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/server/GuestModeHelper;->registerReceiver()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/GuestModeHelper;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/GuestModeHelper;

    .line 26
    invoke-direct {p0}, Lcom/android/server/GuestModeHelper;->handleBootComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GuestModeHelper;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GuestModeHelper;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/GuestModeHelper;->handleUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GuestModeHelper;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GuestModeHelper;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/GuestModeHelper;->handlePackageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method private checkIfNeedDiablePackageInGuestMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/server/GuestModeHelper;->DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 137
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 139
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfNeedDiablePackageInGuestMode find guest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GuestModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/GuestModeHelper;->disablePackage(Ljava/lang/String;I)V

    .line 145
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    :cond_46
    goto :goto_17

    .line 147
    .end local v0  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_47
    return-void
.end method

.method private disablePackage(Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 198
    const-string v0, "GuestModeHelper"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_36

    .line 200
    iget-object v3, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 200
    move-object v4, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePackage pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 210
    .end local v1  # "state":I
    :cond_36
    goto :goto_60

    .line 207
    :catch_37
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePackage exception= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method private handleBootComplete()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_guard_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    move v0, v1

    .line 111
    .local v0, "isOpened":Z
    if-eqz v0, :cond_14

    .line 112
    invoke-direct {p0}, Lcom/android/server/GuestModeHelper;->initPackagesInGuestMode()V

    .line 114
    :cond_14
    return-void
.end method

.method private handleBootSetupInGuestUser(I)V
    .registers 16
    .param p1, "userId"  # I

    .line 225
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "provision":I
    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 228
    iget-object v3, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    :cond_11
    iget-object v1, p0, Lcom/android/server/GuestModeHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v6, 0x10000000

    .line 235
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/16 v6, 0x20

    .line 233
    invoke-virtual {v1, v3, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 238
    .local v3, "size":I
    const-string v6, "GuestModeHelper"

    const/4 v7, 0x2

    if-ge v3, v7, :cond_3c

    .line 240
    const-string v2, "handleBootSetupInGuestUser just one home"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 246
    :cond_3c
    :try_start_3c
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.meizu.powersave"

    const-string v10, "com.meizu.powersave.PowerSaveMode"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v8, "name":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, v8, v7, v2, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_4b

    .line 253
    .end local v8  # "name":Landroid/content/ComponentName;
    goto :goto_64

    .line 251
    :catch_4b
    move-exception v8

    .line 252
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable power save mode launchers e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v8  # "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.flyme.systemuitools"

    const-string v10, "com.flyme.systemuitools.wellcomepage.WellcomePage"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v8, "name":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v9, v8, v7, v2, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_73

    .line 264
    .end local v8  # "name":Landroid/content/ComponentName;
    goto :goto_8c

    .line 262
    :catch_73
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disable welcome page e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_8c
    new-array v2, v3, [Landroid/content/ComponentName;

    .line 267
    .local v2, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 268
    .local v6, "defaultComponent":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_90
    if-ge v7, v3, :cond_b5

    .line 269
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 270
    .local v8, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 271
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 272
    .local v10, "className":Ljava/lang/String;
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v11, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.meizu.flyme.launcher"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 274
    move-object v6, v11

    .line 276
    :cond_b0
    aput-object v11, v2, v7

    .line 268
    .end local v8  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9  # "packageName":Ljava/lang/String;
    .end local v10  # "className":Ljava/lang/String;
    .end local v11  # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 278
    .end local v7  # "i":I
    :cond_b5
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 281
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 282
    if-eqz v6, :cond_d2

    .line 283
    iget-object v8, p0, Lcom/android/server/GuestModeHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x100000

    move-object v9, v7

    move-object v11, v2

    move-object v12, v6

    move v13, p1

    invoke-virtual/range {v8 .. v13}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 286
    :cond_d2
    return-void
.end method

.method private handleDisablePackagesInGuestMode(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/GuestModeHelper;->handleSetingsValueInGuestMode(I)V

    .line 163
    sget-object v0, Lcom/android/server/GuestModeHelper;->DISABLED_PACKAGES_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 164
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/server/GuestModeHelper;->isPackageExistAsUser(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 165
    goto :goto_20

    .line 167
    :cond_12
    invoke-direct {p0, v3, p1}, Lcom/android/server/GuestModeHelper;->disablePackage(Ljava/lang/String;I)V

    .line 168
    const-string v4, "com.meizu.setup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/GuestModeHelper;->handleBootSetupInGuestUser(I)V

    .line 163
    .end local v3  # "pkg":Ljava/lang/String;
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 173
    :cond_23
    return-void
.end method

.method private handlePackageAdded(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 128
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePackageAdded pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GuestModeHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v1, :cond_27

    .line 131
    invoke-direct {p0, v1}, Lcom/android/server/GuestModeHelper;->checkIfNeedDiablePackageInGuestMode(Ljava/lang/String;)V

    .line 133
    :cond_27
    return-void
.end method

.method private handleSetingsValueInGuestMode(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 187
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_intelligent_voice"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 189
    .local v0, "value":I
    if-eqz v0, :cond_11

    .line 191
    iget-object v3, p0, Lcom/android/server/GuestModeHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v1, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 194
    :cond_11
    return-void
.end method

.method private handleUserAdded(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 117
    const-string v0, "android.intent.extra.user_handle"

    const v1, 0x186a1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/GuestModeHelper;->isGuestUser(I)Z

    move-result v1

    .line 119
    .local v1, "isGuestUser":Z
    if-eqz v1, :cond_12

    .line 120
    invoke-direct {p0, v0}, Lcom/android/server/GuestModeHelper;->handleDisablePackagesInGuestMode(I)V

    .line 122
    :cond_12
    return-void
.end method

.method private initPackagesInGuestMode()V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 152
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initPackagesInGuestMode find guest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GuestModeHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/GuestModeHelper;->handleDisablePackagesInGuestMode(I)V

    .line 158
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    :cond_3b
    goto :goto_b

    .line 159
    :cond_3c
    return-void
.end method

.method private isGuestUser(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 176
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 178
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_22

    .line 179
    return v1

    .line 181
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    :cond_22
    goto :goto_b

    .line 182
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private isPackageExistAsUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GuestModeHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 219
    nop

    .line 220
    return v1

    .line 217
    :catch_8
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private registerReceiver()V
    .registers 4

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GuestModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 103
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/GuestModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GuestModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method
