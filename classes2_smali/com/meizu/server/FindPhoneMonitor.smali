.class public Lcom/meizu/server/FindPhoneMonitor;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FindPhoneMonitor$ApkInfo;,
        Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY_TIME_CHECK_APK:I = 0xbb8

.field private static final DELAY_TIME_CLICK_DIALOG:I = 0x2710

.field private static final DIALOG_STYLE_APK_CHANGED:I = 0x0

.field private static final DIALOG_STYLE_APP_STATE_CHANGED:I = 0x1

.field private static final FIND_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.flyme.service.find"

.field private static final MONITORED_APKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/server/FindPhoneMonitor$ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CHECK_MONITORED_APK:I = 0x1

.field private static final MSG_CHECK_MONITORED_APP_STATE:I = 0x5

.field private static final MSG_CLICK_DIALOG:I = 0x4

.field private static final MSG_MONITORED_APK_CHANGED:I = 0x2

.field private static final MSG_MONITORED_APP_STATE_CHANGED:I = 0x6

.field private static final MSG_SHOW_DIALOG:I = 0x3

.field private static final MZ_ACCOUNT_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.account"

.field private static final MZ_CLOUD_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.cloud"

.field private static final TAG:Ljava/lang/String; = "FindPhoneMonitor"

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsHandleApkChanged:Z

.field private mIsHandleAppStateChanged:Z

.field private mLastEvent:I

.field private mLock:Ljava/lang/Object;

.field private mMonitoredApkObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string v2, "MzPhoneLocationService"

    const-string v3, "MzPhoneLocationService.apk"

    const-string v4, "com.meizu.flyme.service.find"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string v2, "MzAccount"

    const-string v3, "MzAccount.apk"

    const-string v4, "com.meizu.account"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    const-string v2, "MzCloudService"

    const-string v3, "MzCloudService.apk"

    const-string v4, "com.meizu.cloud"

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/FindPhoneMonitor$1;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    iput-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    .line 94
    const-string v0, "startFindPhoneWatch"

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mMonitoredApkObservers:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v0, "systemAppDir":Ljava/io/File;
    const/16 v1, 0xece

    .line 104
    .local v1, "mash":I
    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 105
    .local v3, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->parentName:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v4, "monitoredDir":Ljava/io/File;
    new-instance v5, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v1}, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;-><init>(Lcom/meizu/server/FindPhoneMonitor;Ljava/lang/String;I)V

    .line 107
    .local v5, "observer":Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
    iget-object v6, p0, Lcom/meizu/server/FindPhoneMonitor;->mMonitoredApkObservers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v5}, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->startWatching()V

    .line 109
    .end local v3  # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .end local v4  # "monitoredDir":Ljava/io/File;
    .end local v5  # "observer":Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
    goto :goto_32

    .line 111
    :cond_57
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredAppAsyn()V

    .line 113
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->registerPackageChangedRecever()V

    .line 114
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->registerBootCompletedRecever()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredApkAsyn()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # Landroid/os/Message;

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->handleMonitoredApkChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/server/FindPhoneMonitor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1176(Lcom/meizu/server/FindPhoneMonitor;I)I
    .registers 3
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # I

    .line 31
    iget v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;J)V
    .registers 6
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/Object;
    .param p4, "x4"  # J

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/meizu/server/FindPhoneMonitor;->sendMessageDelay(IILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/Object;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredApk()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredAppState()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # Landroid/os/Message;

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->showWarnmingDialog(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # Landroid/os/Message;

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->clickDialogButton(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredAppStateAsyn()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/server/FindPhoneMonitor;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;
    .param p1, "x1"  # Landroid/os/Message;

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->handleMonitoredAppStateChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredApp()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 31
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .registers 1

    .line 31
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"  # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method private buildAlertDialog(Ljava/lang/String;I)Landroid/app/AlertDialog;
    .registers 14
    .param p1, "changedPackageName"  # Ljava/lang/String;
    .param p2, "dialogType"  # I

    .line 229
    invoke-direct {p0, p2}, Lcom/meizu/server/FindPhoneMonitor;->buildDialogClickListener(I)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 230
    .local v0, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, p1}, Lcom/meizu/server/FindPhoneMonitor;->getChangedAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "changedAppName":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_17

    const v4, 0xa100066

    goto :goto_1a

    :cond_17
    const v4, 0xa100064

    .line 234
    .local v4, "contentTextId":I
    :goto_1a
    iget-object v5, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "content":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    if-ne p2, v3, :cond_2e

    const v6, 0xa100065

    goto :goto_31

    :cond_2e
    const v6, 0xa100063

    .line 237
    .local v6, "buttonTextId":I
    :goto_31
    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 239
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7e0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 240
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 241
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 242
    return-object v8
.end method

.method private buildDialogClickListener(I)Landroid/content/DialogInterface$OnClickListener;
    .registers 3
    .param p1, "dialogType"  # I

    .line 246
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 247
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor$5;

    invoke-direct {v0, p0}, Lcom/meizu/server/FindPhoneMonitor$5;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    return-object v0

    .line 254
    :cond_9
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor$6;

    invoke-direct {v0, p0}, Lcom/meizu/server/FindPhoneMonitor$6;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    return-object v0
.end method

.method private declared-synchronized checkMonitoredApk()V
    .registers 6

    monitor-enter p0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "isApkModified":Z
    const/4 v1, 0x0

    .line 275
    .local v1, "changedPackageName":Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 276
    .local v3, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    invoke-direct {p0, v3}, Lcom/meizu/server/FindPhoneMonitor;->isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 277
    const/4 v0, 0x1

    .line 278
    iget-object v2, v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    move-object v1, v2

    .line 279
    goto :goto_21

    .line 281
    .end local v3  # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .end local p0  # "this":Lcom/meizu/server/FindPhoneMonitor;
    :cond_20
    goto :goto_9

    .line 282
    :cond_21
    :goto_21
    if-eqz v0, :cond_2d

    .line 283
    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, v1}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    .line 286
    :cond_2d
    monitor-exit p0

    return-void

    .line 272
    .end local v0  # "isApkModified":Z
    .end local v1  # "changedPackageName":Ljava/lang/String;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkMonitoredApkAsyn()V
    .registers 3

    .line 344
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$7;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$7;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method

.method private declared-synchronized checkMonitoredAppState()V
    .registers 6

    monitor-enter p0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "isAppDisable":Z
    const/4 v1, 0x0

    .line 364
    .local v1, "disablePackageName":Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 365
    .local v3, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v4, v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/meizu/server/FindPhoneMonitor;->isAppEnable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 366
    const/4 v0, 0x1

    .line 367
    iget-object v2, v3, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    move-object v1, v2

    .line 368
    goto :goto_23

    .line 370
    .end local v3  # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .end local p0  # "this":Lcom/meizu/server/FindPhoneMonitor;
    :cond_22
    goto :goto_9

    .line 371
    :cond_23
    :goto_23
    if-eqz v0, :cond_2f

    .line 372
    iget-object v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    const/4 v2, 0x1

    invoke-direct {p0, v3, v2, v1}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    .line 375
    :cond_2f
    monitor-exit p0

    return-void

    .line 361
    .end local v0  # "isAppDisable":Z
    .end local v1  # "disablePackageName":Ljava/lang/String;
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkMonitoredAppStateAsyn()V
    .registers 3

    .line 353
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$8;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$8;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    return-void
.end method

.method private clickDialogButton(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 415
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 416
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 419
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 421
    iput-boolean v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    goto :goto_1e

    .line 423
    :cond_13
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->doRecovery()V

    .line 425
    iput-boolean v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    .line 427
    :goto_1e
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8
    .param p0, "s1"  # [Landroid/content/pm/Signature;
    .param p1, "s2"  # [Landroid/content/pm/Signature;

    .line 459
    if-nez p0, :cond_8

    .line 460
    if-nez p1, :cond_6

    .line 461
    const/4 v0, 0x1

    goto :goto_7

    .line 462
    :cond_6
    const/4 v0, -0x1

    .line 460
    :goto_7
    return v0

    .line 464
    :cond_8
    if-nez p1, :cond_c

    .line 465
    const/4 v0, -0x2

    return v0

    .line 467
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 468
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_1e

    aget-object v4, p0, v3

    .line 469
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v4  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 471
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 472
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_25
    if-ge v4, v3, :cond_2f

    aget-object v5, p1, v4

    .line 473
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    .end local v5  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 476
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 477
    return v2

    .line 479
    :cond_36
    const/4 v2, -0x3

    return v2
.end method

.method private doRecovery()V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 431
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method private enableApp(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/meizu/server/FindPhoneMonitor;->isEnableState(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 137
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableApp.setApplicationEnabledSetting()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2a

    .line 142
    .end local v1  # "state":I
    :cond_29
    goto :goto_46

    .line 140
    :catch_2a
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableApp.setApplicationEnabledSetting, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 143
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private enableMonitoredApp()V
    .registers 4

    .line 127
    sget-object v0, Lcom/meizu/server/FindPhoneMonitor;->MONITORED_APKS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 128
    .local v1, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v2, v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/meizu/server/FindPhoneMonitor;->enableApp(Ljava/lang/String;)V

    .line 129
    .end local v1  # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    goto :goto_6

    .line 130
    :cond_18
    return-void
.end method

.method private enableMonitoredAppAsyn()V
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/server/FindPhoneMonitor$2;

    invoke-direct {v1, p0}, Lcom/meizu/server/FindPhoneMonitor$2;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method

.method private getChangedAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "changedPackageName"  # Ljava/lang/String;

    .line 264
    const-string v0, "com.meizu.account"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const v1, 0xa100061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_12
    const-string v0, "com.meizu.cloud"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 267
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const v1, 0xa100062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_24
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    const v1, 0xa100060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMonitoredApkChanged(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"  # Landroid/os/Message;

    .line 378
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-boolean v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    if-eqz v1, :cond_9

    .line 380
    monitor-exit v0

    return-void

    .line 382
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMonitoredApkChanged, mLastEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mLastEvent:I

    .line 385
    const/4 v2, 0x3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v3}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    .line 386
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x2710

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/meizu/server/FindPhoneMonitor;->sendMessageDelay(IILjava/lang/Object;J)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private handleMonitoredAppStateChanged(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 391
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-boolean v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    if-eqz v1, :cond_9

    .line 393
    monitor-exit v0

    return-void

    .line 395
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    .line 396
    iget-boolean v2, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleApkChanged:Z

    if-nez v2, :cond_16

    .line 398
    const/4 v2, 0x3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v3}, Lcom/meizu/server/FindPhoneMonitor;->sendMessage(IILjava/lang/Object;)V

    .line 400
    :cond_16
    invoke-direct {p0}, Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredAppAsyn()V

    .line 401
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mIsHandleAppStateChanged:Z

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;)Z
    .registers 3
    .param p1, "info"  # Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 294
    const-string v0, "app"

    invoke-direct {p0, p1, v0}, Lcom/meizu/server/FindPhoneMonitor;->isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 295
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private isApkModified(Lcom/meizu/server/FindPhoneMonitor$ApkInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "info"  # Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    .param p2, "systemDirName"  # Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v0, "systemAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->parentName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v1, "apkDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v2, "apkFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/meizu/server/FindPhoneMonitor;->verifyApkExist(Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_37

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not exist!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 312
    return v4

    .line 313
    :cond_37
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/meizu/server/FindPhoneMonitor;->verifyApkContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 314
    return v4

    .line 316
    :cond_44
    const/4 v3, 0x0

    return v3
.end method

.method private isAppEnable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/meizu/server/FindPhoneMonitor;->isEnableState(I)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v2

    .line 150
    .end local v1  # "state":I
    :catch_f
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAppEnable.getApplicationEnabledSetting, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 153
    .end local v1  # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private isEnableState(I)Z
    .registers 3
    .param p1, "state"  # I

    .line 157
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method public static isFindPhoneMonitorEnable()Z
    .registers 2

    .line 488
    sget-object v0, Landroid/os/BuildExt;->IS_M95:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 490
    return v1

    .line 492
    :cond_a
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 494
    const-string v0, "Monitor disable for isProductInternational"

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 495
    return v1

    .line 497
    :cond_16
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 499
    const-string v0, "Monitor disable for isFlymeRom"

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 500
    return v1

    .line 502
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method private static isSystemSignatures([Landroid/content/pm/Signature;)Z
    .registers 6
    .param p0, "signature"  # [Landroid/content/pm/Signature;

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "isSystemSignaturesFlag":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 443
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 444
    .local v2, "pm":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v3, :cond_1b

    .line 446
    :try_start_d
    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sput-object v3, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_19} :catch_1a

    .line 448
    goto :goto_1b

    .line 447
    :catch_1a
    move-exception v3

    .line 450
    :cond_1b
    :goto_1b
    sget-object v3, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_26

    .line 451
    invoke-static {v3, p0}, Lcom/meizu/server/FindPhoneMonitor;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_26

    .line 452
    const/4 v0, 0x1

    .line 455
    :cond_26
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "text"  # Ljava/lang/String;

    .line 436
    const-string v0, "FindPhoneMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method private registerBootCompletedRecever()V
    .registers 4

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/FindPhoneMonitor$3;

    invoke-direct {v2, p0}, Lcom/meizu/server/FindPhoneMonitor$3;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method private registerPackageChangedRecever()V
    .registers 4

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/meizu/server/FindPhoneMonitor$4;

    invoke-direct {v2, p0}, Lcom/meizu/server/FindPhoneMonitor$4;-><init>(Lcom/meizu/server/FindPhoneMonitor;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "what"  # I
    .param p2, "arg1"  # I
    .param p3, "obj"  # Ljava/lang/Object;

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 199
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 200
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method private sendMessageDelay(IILjava/lang/Object;J)V
    .registers 8
    .param p1, "what"  # I
    .param p2, "arg1"  # I
    .param p3, "obj"  # Ljava/lang/Object;
    .param p4, "delayMillis"  # J

    .line 205
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 207
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 208
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 210
    return-void
.end method

.method private showWarnmingDialog(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 406
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 407
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 409
    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "changedPackageName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/server/FindPhoneMonitor;->buildAlertDialog(Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    .line 411
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method

.method private verifyApkContent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 325
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 326
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " packageInfo is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 328
    return v2

    .line 330
    :cond_24
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->isSystemSignatures([Landroid/content/pm/Signature;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " systemSignature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/meizu/server/FindPhoneMonitor;->sSystemSignature:[Landroid/content/pm/Signature;

    const-string v5, "null"

    if-nez v4, :cond_41

    move-object v4, v5

    goto :goto_45

    :cond_41
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " apkSignatures = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_61

    goto :goto_67

    :cond_61
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 333
    return v2

    .line 335
    :cond_72
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/server/FindPhoneMonitor;->log(Ljava/lang/String;)V

    .line 338
    return v2

    .line 340
    :cond_a5
    const/4 v2, 0x1

    return v2
.end method

.method private verifyApkExist(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"  # Ljava/io/File;

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
