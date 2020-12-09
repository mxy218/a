.class public Lcom/android/server/incident/IncidentCompanionService;
.super Lcom/android/server/SystemService;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/IncidentCompanionService$BinderService;
    }
.end annotation


# static fields
.field private static final DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

.field private static RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field private mPendingReports:Lcom/android/server/incident/PendingReports;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-string v0, "--hal"

    const-string v1, "--restricted_image"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    .line 64
    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance v0, Lcom/android/server/incident/PendingReports;

    invoke-direct {v0, p1}, Lcom/android/server/incident/PendingReports;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService;->getIIncidentManager()Landroid/os/IIncidentManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getAndValidateUser(Landroid/content/Context;)I
    .registers 5

    .line 424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_34

    .line 428
    nop

    .line 431
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 435
    const/16 v1, -0x2710

    const-string v2, "IncidentCompanionService"

    if-nez v0, :cond_1d

    .line 436
    const-string p0, "No current user.  Nobody to approve the report. The report will be denied."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v1

    .line 440
    :cond_1d
    if-nez p0, :cond_25

    .line 441
    const-string p0, "No primary user.  Nobody to approve the report. The report will be denied."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1

    .line 445
    :cond_25
    iget v3, p0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, v0, :cond_31

    .line 446
    const-string p0, "Only the primary user can approve bugreports, but they are not the current user. The report will be denied."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v1

    .line 451
    :cond_31
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0

    .line 425
    :catch_34
    move-exception p0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getIIncidentManager()Landroid/os/IIncidentManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    nop

    .line 413
    const-string v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 399
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 400
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_8

    goto :goto_d

    .line 402
    :cond_8
    iget-object p1, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    invoke-virtual {p1}, Lcom/android/server/incident/PendingReports;->onBootCompleted()V

    .line 405
    :goto_d
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 390
    new-instance v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$1;)V

    const-string v1, "incidentcompanion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/incident/IncidentCompanionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    return-void
.end method
