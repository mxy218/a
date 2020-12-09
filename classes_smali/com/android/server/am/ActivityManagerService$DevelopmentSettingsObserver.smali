.class final Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevelopmentSettingsObserver"
.end annotation


# instance fields
.field private final mBugreportStorageProvider:Landroid/content/ComponentName;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 1078
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1079
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1072
    nop

    .line 1073
    const-string v0, "development_settings_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    .line 1075
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.shell"

    const-string v2, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1080
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->onChange()V

    .line 1084
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 6

    .line 1094
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1095
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    .line 1094
    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 1096
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1097
    if-eqz v0, :cond_24

    goto :goto_25

    .line 1098
    :cond_24
    move v1, v2

    :goto_25
    nop

    .line 1096
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1100
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 1088
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->onChange()V

    .line 1091
    :cond_b
    return-void
.end method
