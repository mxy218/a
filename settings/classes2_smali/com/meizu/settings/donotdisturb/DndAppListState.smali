.class public Lcom/meizu/settings/donotdisturb/DndAppListState;
.super Ljava/lang/Object;
.source "DndAppListState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;,
        Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;
    }
.end annotation


# static fields
.field private static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/meizu/settings/donotdisturb/DndAppListState;


# instance fields
.field private mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

.field private mChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFinalAppCloneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPriorityAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sIgnorePkgList:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sIgnorePkgList:Ljava/util/List;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sIgnorePkgList:Ljava/util/List;

    const-string v1, "com.android.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sIgnorePkgList:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppListState$3;

    invoke-direct {v0}, Lcom/meizu/settings/donotdisturb/DndAppListState$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mFinalAppCloneList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppListState$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/donotdisturb/DndAppListState$1;-><init>(Lcom/meizu/settings/donotdisturb/DndAppListState;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppListState$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/donotdisturb/DndAppListState$2;-><init>(Lcom/meizu/settings/donotdisturb/DndAppListState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mMainHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    const-string v0, "DndNotificationSettingsState"

    const-string v1, "DndAppListState init"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    .line 138
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "notification"

    .line 141
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mINotificationManager:Landroid/app/INotificationManager;

    .line 143
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DndAppListState"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;-><init>(Lcom/meizu/settings/donotdisturb/DndAppListState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_do_not_disturb_priority_apps"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, ","

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 156
    array-length v0, p1

    if-lez v0, :cond_ab

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9f
    if-ge v1, v0, :cond_ab

    aget-object v2, p1, v1

    .line 158
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_ab
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/donotdisturb/DndAppListState;)Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/donotdisturb/DndAppListState;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->loadAppList()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/donotdisturb/DndAppListState;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->getIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/donotdisturb/DndAppListState;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    return-object p0
.end method

.method private getHighPriority(Ljava/lang/String;I)Z
    .registers 5

    .line 283
    :try_start_0
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getMaxPriority(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHighPriority pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exception = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DndNotificationSettingsState"

    .line 285
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private getIcon(Ljava/lang/String;)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " d isDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    .line 271
    invoke-static {v2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DndNotificationSettingsState"

    .line 270
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/donotdisturb/DndAppListState;
    .registers 3

    .line 165
    sget-object v0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sInstance:Lcom/meizu/settings/donotdisturb/DndAppListState;

    if-nez v0, :cond_17

    .line 166
    const-class v0, Lcom/meizu/settings/donotdisturb/DndAppListState;

    monitor-enter v0

    .line 167
    :try_start_7
    sget-object v1, Lcom/meizu/settings/donotdisturb/DndAppListState;->sInstance:Lcom/meizu/settings/donotdisturb/DndAppListState;

    if-nez v1, :cond_12

    .line 168
    new-instance v1, Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-direct {v1, p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/donotdisturb/DndAppListState;->sInstance:Lcom/meizu/settings/donotdisturb/DndAppListState;

    .line 170
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 172
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->sInstance:Lcom/meizu/settings/donotdisturb/DndAppListState;

    return-object p0
.end method

.method private loadAppList()V
    .registers 10

    .line 195
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 200
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1a

    .line 201
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/meizu/settings/donotdisturb/DndAppListState;->sIgnorePkgList:Ljava/util/List;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 202
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_1a

    .line 205
    :cond_37
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    iget-object v6, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_42

    goto :goto_1a

    .line 210
    :cond_42
    iget-object v6, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    new-instance v7, Lcom/meizu/settings/donotdisturb/DndAppInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v6, v5, v8}, Lcom/meizu/settings/donotdisturb/DndAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/meizu/settings/donotdisturb/DndAppListState;->getHighPriority(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x1

    .line 213
    invoke-virtual {v7, v4}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->setEnabled(Z)V

    .line 214
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppList find enabled pkg = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DndNotificationSettingsState"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 217
    :cond_79
    invoke-virtual {v7, v1}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->setEnabled(Z)V

    .line 218
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppList find disabled pkg = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DndNotificationSettingsState"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 223
    :cond_96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_a2

    .line 224
    sget-object v3, Lcom/meizu/settings/donotdisturb/DndAppListState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    :cond_a2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_ad

    .line 227
    sget-object v3, Lcom/meizu/settings/donotdisturb/DndAppListState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    :cond_ad
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v5, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    iget-object v6, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    const v7, 0x7f12073b

    .line 232
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;-><init>(ILjava/lang/String;)V

    .line 233
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_dd

    .line 237
    new-instance v5, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    iget-object v6, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    const v7, 0x7f120739

    .line 239
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;-><init>(ILjava/lang/String;)V

    .line 240
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_dd
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 245
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    iget-object v5, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    const v6, 0x7f120738

    .line 247
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;-><init>(ILjava/lang/String;)V

    .line 248
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_f7
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mFinalAppCloneList:Ljava/util/List;

    monitor-enter v0

    .line 252
    :try_start_fa
    iput-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mFinalAppCloneList:Ljava/util/List;

    .line 253
    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_107

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_107
    move-exception p0

    .line 253
    :try_start_108
    monitor-exit v0
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw p0
.end method

.method private saveHighPriority(Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 303
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 304
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_11
    if-nez p2, :cond_21

    .line 306
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 307
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_25

    return-void

    .line 313
    :cond_25
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 314
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mPriorityAppList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 317
    :cond_51
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "mz_do_not_disturb_priority_apps"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setHighPriority priorityAppsStr = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DndNotificationSettingsState"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHighPriority(Ljava/lang/String;IZ)V
    .registers 6

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setMaxPriority(Ljava/lang/String;IZ)V

    .line 294
    invoke-direct {p0, p1, p3}, Lcom/meizu/settings/donotdisturb/DndAppListState;->saveHighPriority(Ljava/lang/String;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_3c

    :catch_9
    move-exception p0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighPriority pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " highPriority = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " exception = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DndNotificationSettingsState"

    .line 296
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method


# virtual methods
.method public onPause(Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;)V
    .registers 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause  l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DndNotificationSettingsState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2a
    return-void
.end method

.method public onResume(Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;)V
    .registers 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DndNotificationSettingsState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_23
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 181
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3e
    return-void
.end method

.method public setAppNotificationEnabled(ZLjava/lang/String;I)Z
    .registers 4

    .line 277
    invoke-direct {p0, p2, p3, p1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->setHighPriority(Ljava/lang/String;IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public startGetIconIfNeeded(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGetIcon pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DndNotificationSettingsState"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    iget-object v3, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  need get icon"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState;->mBackgroundHandler:Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4d
    return-object v0
.end method
