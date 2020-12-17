.class public Lcom/meizu/server/FlymePermissionService;
.super Lmeizu/security/IFlymePermissionService$Stub;
.source "FlymePermissionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/FlymePermissionService$CtaInfo;
    }
.end annotation


# static fields
.field private static final CTA_PERM_CHECK_ALL:Z

.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PermissionControl"


# instance fields
.field final appOpsHandle:Lcom/meizu/server/AppOpsHandle;

.field findPhoneMonitor:Lcom/meizu/server/FindPhoneMonitor;

.field private mContext:Landroid/content/Context;

.field private mCtaConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/meizu/server/FlymePermissionService$CtaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    .line 38
    const-string v1, "persist.sys.perm.checkall"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/server/FlymePermissionService;->CTA_PERM_CHECK_ALL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lmeizu/security/IFlymePermissionService$Stub;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mCtaConfig:Landroid/util/SparseArray;

    .line 52
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    const-string v1, "PermissionControl"

    if-eqz v0, :cond_15

    const-string v0, "PermissionControlService construct"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_15
    iput-object p1, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/meizu/server/AppOpsHandle;

    invoke-direct {v0, p1}, Lcom/meizu/server/AppOpsHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    .line 55
    new-instance v0, Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-direct {v0, p1}, Lcom/meizu/server/FLymeAppOpsHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    .line 56
    invoke-static {}, Lcom/meizu/server/FindPhoneMonitor;->isFindPhoneMonitorEnable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 57
    new-instance v0, Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {v0, p1}, Lcom/meizu/server/FindPhoneMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->findPhoneMonitor:Lcom/meizu/server/FindPhoneMonitor;

    .line 60
    :cond_32
    sget-boolean v0, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-eqz v0, :cond_4c

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 62
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/server/FlymePermissionService;->mHandler:Landroid/os/Handler;

    .line 64
    .end local v0  # "ht":Landroid/os/HandlerThread;
    goto :goto_4f

    .line 65
    :cond_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mHandler:Landroid/os/Handler;

    .line 67
    :goto_4f
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/server/FlymePermissionService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/server/FlymePermissionService;

    .line 34
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/server/FlymePermissionService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/meizu/server/FlymePermissionService;
    .param p1, "x1"  # Landroid/content/Context;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FlymePermissionService;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissionAllow(IILjava/lang/String;)Z
    .registers 11
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 329
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, "requestPermission":I
    const/4 v2, 0x0

    const-string v3, "PermissionControl"

    if-nez v1, :cond_49

    .line 333
    iget-object v4, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v4, v0, p2, p3}, Lcom/meizu/server/FLymeAppOpsHandle;->checkOpAllow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 334
    .local v4, "mode":I
    if-nez v4, :cond_1c

    const/4 v2, 0x1

    .line 335
    .local v2, "checkOpAllow":Z
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", checkOpAllow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v2

    .line 339
    .end local v2  # "checkOpAllow":Z
    .end local v4  # "mode":I
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v2
.end method

.method private getCtaInfo(II)Lcom/meizu/server/FlymePermissionService$CtaInfo;
    .registers 6
    .param p1, "uid"  # I
    .param p2, "op"  # I

    .line 233
    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mCtaConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 235
    .local v0, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/meizu/server/FlymePermissionService$CtaInfo;>;"
    if-nez v0, :cond_16

    .line 236
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 237
    iget-object v1, p0, Lcom/meizu/server/FlymePermissionService;->mCtaConfig:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FlymePermissionService$CtaInfo;

    .line 240
    .local v1, "ctaInfo":Lcom/meizu/server/FlymePermissionService$CtaInfo;
    if-nez v1, :cond_27

    .line 241
    new-instance v2, Lcom/meizu/server/FlymePermissionService$CtaInfo;

    invoke-direct {v2}, Lcom/meizu/server/FlymePermissionService$CtaInfo;-><init>()V

    move-object v1, v2

    .line 242
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    :cond_27
    monitor-exit p0

    return-object v1

    .line 245
    .end local v0  # "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/meizu/server/FlymePermissionService$CtaInfo;>;"
    .end local v1  # "ctaInfo":Lcom/meizu/server/FlymePermissionService$CtaInfo;
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private getPermissionName(I)Ljava/lang/String;
    .registers 4
    .param p1, "op"  # I

    .line 182
    const/16 v0, 0x49

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x4b

    if-eq p1, v0, :cond_20

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_19

    .line 191
    invoke-static {p1}, Lmeizu/security/FlymePermissionManager;->isCtaOps(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 192
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_17
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_19
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 189
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0

    .line 184
    :cond_3f
    const/16 v0, 0x33

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNotShowOp(I)Z
    .registers 3
    .param p1, "op"  # I

    .line 177
    const/16 v0, 0x38

    if-eq p1, v0, :cond_b

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private markPrivPerm(IILjava/lang/String;)V
    .registers 9
    .param p1, "switchCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 307
    const-string v0, "PermissionControl"

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_50

    .line 308
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_16

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    if-eqz p1, :cond_16

    const/4 v1, 0x1

    if-ne p1, v1, :cond_64

    .line 313
    :cond_16
    const/4 v1, 0x0

    .line 314
    .local v1, "allow":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FlymePermissionService;->checkPermissionAllow(IILjava/lang/String;)Z

    move-result v2

    .line 315
    .local v2, "permissionAllow":Z
    move v1, v2

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "req == null, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", permissionAllow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v1, :cond_4f

    .line 320
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1}, Lmeizu/security/PrivPermHelper;->checkPrivPerm(Landroid/content/Context;Ljava/lang/String;I)V

    .line 322
    .end local v1  # "allow":Z
    .end local v2  # "permissionAllow":Z
    :cond_4f
    goto :goto_64

    .line 324
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid: 1000, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_64
    :goto_64
    return-void
.end method

.method private showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "summary"  # Ljava/lang/String;

    .line 199
    const-string v0, "CTA"

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 200
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 201
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 203
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "Test"

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 204
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 206
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 208
    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 212
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    const-string v5, "perm_flyme"

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    .line 213
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 212
    invoke-virtual {v3, v5, v6, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_60

    .line 216
    .end local v0  # "mBuilder":Landroid/app/Notification$Builder;
    .end local v1  # "pm":Landroid/content/pm/PackageManager;
    .end local v2  # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3  # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4  # "channel":Landroid/app/NotificationChannel;
    goto :goto_64

    .line 214
    :catch_60
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_64
    return-void
.end method


# virtual methods
.method public askOpsOperation(IILjava/lang/String;)I
    .registers 5
    .param p1, "switchCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FlymePermissionService;->markPrivPerm(IILjava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;)I
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 114
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 116
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_14

    .line 117
    const/4 v2, 0x0

    return v2

    .line 120
    :cond_14
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2

    return v2
.end method

.method public clearOpsOperation(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 256
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0, p1}, Lcom/meizu/server/FLymeAppOpsHandle;->clearOperation(I)V

    .line 257
    return-void
.end method

.method public clearPrivPermissions(I)V
    .registers 2
    .param p1, "type"  # I

    .line 298
    invoke-static {p1}, Lmeizu/security/PrivPermHelper;->clearPrivPermissions(I)V

    .line 299
    return-void
.end method

.method public connectSocketService(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 98
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PermissionControl"

    const-string v1, "connectSocketService in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_b
    new-instance v0, Lcom/meizu/server/SocketService;

    invoke-direct {v0}, Lcom/meizu/server/SocketService;-><init>()V

    .line 100
    .local v0, "service":Lcom/meizu/server/SocketService;
    invoke-virtual {v0, p1}, Lcom/meizu/server/SocketService;->handleMessage(Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method public forceKillProcess(I)V
    .registers 5
    .param p1, "pid"  # I

    .line 83
    const-string v0, "android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {p0, v0}, Lcom/meizu/server/FlymePermissionService;->checkComponentPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PermissionControl"

    if-nez v0, :cond_27

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force kill process pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " by AMS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 94
    return-void

    .line 85
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: forceStopPackage() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires android.permission.FORCE_KILL_PROCESS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPrivPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmeizu/security/PrivPermInfo;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-static {}, Lmeizu/security/PrivPermHelper;->getPrivPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public noteIntentOperation(IILjava/lang/String;Landroid/content/Intent;)I
    .registers 7
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;

    .line 71
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PermissionControl"

    const-string v1, "noteIntentOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_b
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/server/AppOpsHandle;->handleIntentOperation(IILjava/lang/String;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public noteIntentPidOperation(IIILandroid/content/Intent;)I
    .registers 7
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "intent"  # Landroid/content/Intent;

    .line 77
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PermissionControl"

    const-string v1, "noteIntentOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/server/AppOpsHandle;->handleIntentPidOperation(IIILandroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public printPermissionTrace(IILjava/lang/String;I)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "op"  # I

    .line 126
    sget-boolean v0, Lmeizu/security/FlymePermissionManager;->IS_CTA_TESTER:Z

    if-nez v0, :cond_5

    .line 127
    return-void

    .line 130
    :cond_5
    invoke-direct {p0, p4}, Lcom/meizu/server/FlymePermissionService;->isNotShowOp(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    return-void

    .line 134
    :cond_c
    invoke-direct {p0, p1, p4}, Lcom/meizu/server/FlymePermissionService;->getCtaInfo(II)Lcom/meizu/server/FlymePermissionService$CtaInfo;

    move-result-object v0

    .line 136
    .local v0, "ctaInfo":Lcom/meizu/server/FlymePermissionService$CtaInfo;
    sget-boolean v1, Lcom/meizu/server/FlymePermissionService;->CTA_PERM_CHECK_ALL:Z

    if-nez v1, :cond_19

    iget-boolean v1, v0, Lcom/meizu/server/FlymePermissionService$CtaInfo;->isShow:Z

    if-nez v1, :cond_19

    .line 137
    return-void

    .line 140
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/meizu/server/FlymePermissionService$CtaInfo;->lastShowTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-gez v1, :cond_27

    .line 141
    return-void

    .line 143
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/meizu/server/FlymePermissionService$CtaInfo;->lastShowTime:J

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_3c

    .line 147
    iget-object v3, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgs":[Ljava/lang/String;
    goto :goto_40

    .line 149
    .end local v3  # "pkgs":[Ljava/lang/String;
    :cond_3c
    new-array v3, v2, [Ljava/lang/String;

    aput-object p3, v3, v1

    .line 152
    .restart local v3  # "pkgs":[Ljava/lang/String;
    :goto_40
    array-length v4, v3

    if-le v4, v2, :cond_58

    if-lez p2, :cond_58

    .line 153
    invoke-static {p2}, Lcom/meizu/server/AppOpsHandleCTA;->getProcessNameFromPid(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "processName":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 155
    new-array v5, v2, [Ljava/lang/String;

    aput-object v4, v5, v1

    move-object v3, v5

    .line 159
    .end local v4  # "processName":Ljava/lang/String;
    :cond_58
    array-length v4, v3

    if-le v4, v2, :cond_5c

    .line 160
    return-void

    .line 163
    :cond_5c
    iget-object v2, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    invoke-static {v2, p4}, Lmeizu/security/FlymePermissionManager;->getPermissonTypeDetails(Landroid/content/Context;I)Lmeizu/security/FlymePermissionManager$TitleAndContent;

    move-result-object v2

    iget-object v2, v2, Lmeizu/security/FlymePermissionManager$TitleAndContent;->title:Ljava/lang/String;

    .line 164
    .local v2, "name":Ljava/lang/String;
    aget-object v1, v3, v1

    .line 165
    .local v1, "noticePkg":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/meizu/server/FlymePermissionService;->getPermissionName(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "permName":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/server/FlymePermissionService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/meizu/server/FlymePermissionService$1;

    invoke-direct {v6, p0, v1, v2, v4}, Lcom/meizu/server/FlymePermissionService$1;-><init>(Lcom/meizu/server/FlymePermissionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; pid(不准): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 172
    const-string v7, "FlymePermTrace"

    invoke-static {v7, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    return-void
.end method

.method public queryCtaConfig(II)Z
    .registers 4
    .param p1, "uid"  # I
    .param p2, "op"  # I

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/FlymePermissionService;->getCtaInfo(II)Lcom/meizu/server/FlymePermissionService$CtaInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/meizu/server/FlymePermissionService$CtaInfo;->isShow:Z

    return v0
.end method

.method public queryOpAskState(II)I
    .registers 4
    .param p1, "uid"  # I
    .param p2, "switchCode"  # I

    .line 261
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/server/FLymeAppOpsHandle;->queryOpAskState(II)I

    move-result v0

    return v0
.end method

.method public setCtaConfig(IIZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "op"  # I
    .param p3, "value"  # Z

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    .line 227
    return-void

    .line 229
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/FlymePermissionService;->getCtaInfo(II)Lcom/meizu/server/FlymePermissionService$CtaInfo;

    move-result-object v0

    iput-boolean p3, v0, Lcom/meizu/server/FlymePermissionService$CtaInfo;->isShow:Z

    .line 230
    return-void
.end method

.method public setCtsRunning(Z)V
    .registers 4
    .param p1, "value"  # Z

    .line 105
    sget-boolean v0, Lcom/meizu/server/FlymePermissionService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PermissionControl"

    const-string v1, "setCtsRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_b
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->appOpsHandle:Lcom/meizu/server/AppOpsHandle;

    invoke-virtual {v0, p1}, Lcom/meizu/server/AppOpsHandle;->setCtsRunning(Z)V

    .line 107
    return-void
.end method

.method public setOpAskState(III)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "switchCode"  # I
    .param p3, "state"  # I

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 267
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 267
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 270
    :cond_1a
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/server/FLymeAppOpsHandle;->setOpAskState(III)V

    .line 271
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0}, Lcom/meizu/server/FLymeAppOpsHandle;->systemReady()V

    .line 283
    return-void
.end method

.method public writeOpAskState()V
    .registers 3

    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/meizu/server/FlymePermissionService;->mFLymeAppOpsHandle:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0}, Lcom/meizu/server/FLymeAppOpsHandle;->writeState()V

    .line 277
    return-void
.end method
