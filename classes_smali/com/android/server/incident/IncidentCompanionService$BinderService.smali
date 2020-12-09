.class final Lcom/android/server/incident/IncidentCompanionService$BinderService;
.super Landroid/os/IIncidentCompanion$Stub;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/IncidentCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/incident/IncidentCompanionService;


# direct methods
.method private constructor <init>(Lcom/android/server/incident/IncidentCompanionService;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-direct {p0}, Landroid/os/IIncidentCompanion$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$1;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;)V

    return-void
.end method

.method private dumpRestrictedImages(Ljava/io/FileDescriptor;)V
    .registers 10

    .line 288
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    .line 289
    return-void

    .line 292
    :cond_9
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    const v1, 0x107005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    array-length v1, v0

    .line 296
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_75

    .line 297
    aget-object v3, v0, v2

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking up service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IncidentCompanionService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 300
    if-eqz v4, :cond_72

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling dump on service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_50
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->access$300()[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_57} :catch_58

    .line 306
    goto :goto_72

    .line 304
    :catch_58
    move-exception v4

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump --restricted_image of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " threw"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 309
    :cond_75
    return-void
.end method

.method private enforceAccessReportsPermissions(Ljava/lang/String;)V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 344
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_2a

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceCallerIsSameApp(Ljava/lang/String;)V

    .line 352
    :cond_2a
    return-void
.end method

.method private enforceAuthorizePermission()V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private enforceCallerIsSameApp(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 359
    const-string v0, "Unknown package "

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 360
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 361
    iget-object v3, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v3}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v3, p1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_4e

    .line 366
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 372
    nop

    .line 373
    return-void

    .line 367
    :cond_25
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gave package "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which is owned by uid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_4e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_63} :catch_63

    .line 370
    :catch_63
    move-exception v1

    .line 371
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceRequestAuthorizationPermission()V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .registers 5

    .line 167
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 171
    :try_start_7
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->approveReport(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 17

    .line 88
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 92
    move-object v0, p0

    :try_start_8
    iget-object v0, v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/incident/PendingReports;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 95
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_1d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 108
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    :try_start_7
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public deleteAllIncidentReports(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    :try_start_f
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IIncidentManager;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 233
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid pkg"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-eqz p3, :cond_32

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IIncidentManager;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2d

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 215
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid pkg, cls or id"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public denyReport(Ljava/lang/String;)V
    .registers 5

    .line 182
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 186
    :try_start_7
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->denyReport(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 271
    return-void

    .line 274
    :cond_f
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--restricted_image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->dumpRestrictedImages(Ljava/io/FileDescriptor;)V

    goto :goto_2b

    .line 279
    :cond_22
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 281
    :goto_2b
    return-void
.end method

.method public getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-eqz p3, :cond_32

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IIncidentManager;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return-object p1

    .line 261
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 253
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid pkg, cls or id"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_8
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IIncidentManager;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-object p1

    .line 203
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getPendingReports()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 159
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports;->getPendingReports()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 125
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    :try_start_7
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v2}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_64

    .line 132
    const/16 v4, -0x2710

    if-ne v3, v4, :cond_19

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-void

    .line 136
    :cond_19
    :try_start_19
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INCIDENT_REPORT_READY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const-string p1, "IncidentCompanionService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendReportReadyBroadcast sending primaryUser="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userHandle="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " intent="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    nop

    .line 145
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 146
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->access$100()[Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_19 .. :try_end_5f} :catchall_64

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_64
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
