.class final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoFillManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 1046
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    .line 1050
    nop

    .line 1051
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1052
    :try_start_8
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$1300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p3

    check-cast p3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;)I

    move-result p1

    .line 1054
    const/4 p2, 0x0

    if-eqz p1, :cond_18

    .line 1055
    or-int/2addr p2, p1

    .line 1057
    :cond_18
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_1e

    .line 1058
    or-int/lit8 p2, p2, 0x2

    .line 1060
    :cond_1e
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_24

    .line 1061
    or-int/lit8 p2, p2, 0x4

    .line 1063
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2b

    .line 1064
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p1, p4, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1065
    return-void

    .line 1063
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public cancelSession(II)V
    .registers 6

    .line 1354
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1355
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$5700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1356
    if-eqz v1, :cond_19

    .line 1357
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->cancelSessionLocked(II)V

    goto :goto_33

    .line 1358
    :cond_19
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_33

    .line 1359
    const-string p1, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_33
    :goto_33
    monitor-exit v0

    .line 1362
    return-void

    .line 1361
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public disableOwnedAutofillServices(I)V
    .registers 6

    .line 1366
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1367
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$5900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1368
    if-eqz v1, :cond_19

    .line 1369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    goto :goto_33

    .line 1370
    :cond_19
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_33

    .line 1371
    const-string v1, "AutofillManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession(): no service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_33
    :goto_33
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 1417
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1419
    :cond_f
    nop

    .line 1420
    nop

    .line 1421
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_7d

    .line 1422
    array-length v2, p3

    move v3, v0

    move v4, v3

    move v5, v1

    :goto_19
    if-ge v3, v2, :cond_7b

    aget-object v6, p3, v3

    .line 1423
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x35b095a5

    const/4 v10, 0x2

    if-eq v8, v9, :cond_47

    const v9, 0x417d0228

    if-eq v8, v9, :cond_3d

    const v9, 0x4f7504e1

    if-eq v8, v9, :cond_33

    :cond_32
    goto :goto_50

    :cond_33
    const-string v8, "--help"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    move v7, v10

    goto :goto_50

    :cond_3d
    const-string v8, "--no-history"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    move v7, v0

    goto :goto_50

    :cond_47
    const-string v8, "--ui-only"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    move v7, v1

    :goto_50
    if-eqz v7, :cond_76

    if-eq v7, v1, :cond_73

    if-eq v7, v10, :cond_6d

    .line 1434
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring invalid dump arg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1431
    :cond_6d
    const-string p1, "Usage: dumpsys autofill [--ui-only|--no-history]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    return-void

    .line 1428
    :cond_73
    nop

    .line 1429
    move v4, v1

    goto :goto_78

    .line 1425
    :cond_76
    nop

    .line 1426
    move v5, v0

    .line 1422
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_7b
    move v0, v4

    goto :goto_7e

    .line 1421
    :cond_7d
    move v5, v1

    .line 1439
    :goto_7e
    if-eqz v0, :cond_8a

    .line 1440
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1441
    return-void

    .line 1445
    :cond_8a
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1446
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1448
    :try_start_8e
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1449
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$6600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_19a

    .line 1450
    :try_start_99
    const-string/jumbo v3, "sDebug: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1451
    const-string v3, " sVerbose: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1453
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    const-string v4, ""

    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$6700(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1454
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v3, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1455
    const-string v3, "Max partitions per session: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->access$6800()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1456
    const-string v3, "Max visible datasets: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->access$6900()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1457
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_e1

    .line 1458
    const-string v3, "Overridden full-screen mode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1460
    :cond_e1
    const-string v3, "User data constraints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-static {v3, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1461
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1462
    const-string v3, "Autofill Compat State: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v3

    const-string v4, "  "

    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->access$7000(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1464
    const-string v3, "from settings: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7200(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    if-eqz v3, :cond_12c

    .line 1467
    const-string v3, "Smart Suggestion modes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7200(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    :cond_12c
    const-string v3, "Augmented Service Idle Unbind Timeout: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1472
    const-string v3, "Augmented Service Request Timeout: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1473
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1474
    if-eqz v5, :cond_182

    .line 1475
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Requests history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1476
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7300(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "UI latency history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1478
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7400(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "WTF history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1480
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$7500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1482
    :cond_182
    const-string p1, "Augmented Autofill State: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p1, p1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    const-string p3, "  "

    invoke-virtual {p1, p3, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1484
    monitor-exit v1
    :try_end_191
    .catchall {:try_start_99 .. :try_end_191} :catchall_197

    .line 1486
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1487
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1488
    nop

    .line 1489
    return-void

    .line 1484
    :catchall_197
    move-exception p1

    :try_start_198
    monitor-exit v1
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    :try_start_199
    throw p1
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_19a

    .line 1486
    :catchall_19a
    move-exception p1

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1487
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    throw p1
.end method

.method public finishSession(II)V
    .registers 6

    .line 1342
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1343
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$5500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1344
    if-eqz v1, :cond_19

    .line 1345
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(II)V

    goto :goto_33

    .line 1346
    :cond_19
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_33

    .line 1347
    const-string p1, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishSession(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_33
    :goto_33
    monitor-exit v0

    .line 1350
    return-void

    .line 1349
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1281
    nop

    .line 1282
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1283
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1284
    if-eqz v2, :cond_1b

    .line 1285
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_36

    .line 1286
    :cond_1b
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_35

    .line 1287
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutofillServiceComponentName(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_35
    const/4 v0, 0x0

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_3d

    .line 1290
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1291
    return-void

    .line 1289
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1260
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1261
    nop

    .line 1263
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1264
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1265
    if-eqz v2, :cond_1f

    .line 1266
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1268
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    .line 1269
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableFcAlgorithms(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    .line 1273
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    .line 1274
    return-void

    .line 1272
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1219
    nop

    .line 1221
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1222
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1223
    if-eqz v2, :cond_1f

    .line 1224
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 1226
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    .line 1227
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFcAlgorithm(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    .line 1231
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3300(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1232
    return-void

    .line 1230
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1139
    nop

    .line 1140
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1141
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1142
    if-eqz v2, :cond_1f

    .line 1143
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    move-result-object v0

    goto :goto_3a

    .line 1144
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    .line 1145
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFillEventHistory(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    .line 1148
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1149
    return-void

    .line 1147
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1155
    nop

    .line 1156
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1157
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1158
    if-eqz v2, :cond_1f

    .line 1159
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v0

    goto :goto_3a

    .line 1160
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    .line 1161
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserData(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    .line 1164
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1165
    return-void

    .line 1163
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1170
    nop

    .line 1172
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1173
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1174
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 1175
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v0

    goto :goto_3b

    .line 1176
    :cond_20
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3a

    .line 1177
    const-string v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserDataId(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_3a
    move-object v0, v3

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_49

    .line 1180
    if-nez v0, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1181
    :goto_43
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p1, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$3300(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1182
    return-void

    .line 1179
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1202
    nop

    .line 1204
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1205
    :try_start_c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1206
    if-eqz v2, :cond_1f

    .line 1207
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabled(I)Z

    move-result v0

    goto :goto_3a

    .line 1208
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_39

    .line 1209
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFieldClassificationEnabled(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    .line 1212
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1213
    return-void

    .line 1211
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 7

    .line 1388
    nop

    .line 1389
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$6200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1390
    :try_start_8
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$6300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1391
    if-eqz v1, :cond_1b

    .line 1392
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_36

    .line 1393
    :cond_1b
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_35

    .line 1394
    const-string p2, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceEnabled(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_35
    const/4 p1, 0x0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_3d

    .line 1397
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p2, p3, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1398
    return-void

    .line 1396
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 1378
    nop

    .line 1379
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$6000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1380
    :try_start_8
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$6100(Lcom/android/server/autofill/AutofillManagerService;I)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1381
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1a

    .line 1382
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, p2, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1383
    return-void

    .line 1381
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 7

    .line 1402
    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    const/4 v2, 0x2

    if-ne p1, v2, :cond_e

    goto :goto_10

    :cond_e
    move v2, v0

    goto :goto_11

    :cond_10
    :goto_10
    move v2, v1

    :goto_11
    new-array v1, v1, [Ljava/lang/Object;

    .line 1405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1403
    const-string v0, "invalid operation: %d"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$6400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1407
    :try_start_25
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1408
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1407
    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$6500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1409
    if-eqz v1, :cond_36

    .line 1410
    invoke-virtual {v1, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 1412
    :cond_36
    monitor-exit v0

    .line 1413
    return-void

    .line 1412
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1494
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1496
    return-void
.end method

.method public removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 6

    .line 1069
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1070
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1071
    if-eqz v1, :cond_15

    .line 1072
    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V

    goto :goto_30

    .line 1073
    :cond_15
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_30

    .line 1074
    const-string p1, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeClient(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_30
    :goto_30
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1297
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1298
    const-string v1, "activityToken"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 1299
    const-string v1, "appCallback"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    .line 1301
    nop

    .line 1302
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1303
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1304
    if-eqz v2, :cond_2f

    .line 1305
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, p1, v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p1

    goto :goto_4b

    .line 1307
    :cond_2f
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_4a

    .line 1308
    const-string p1, "AutofillManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "restoreSession(): no service for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_52

    .line 1311
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p2, p4, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1312
    return-void

    .line 1310
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/internal/os/IResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1241
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1242
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1243
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 1244
    nop

    .line 1245
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    .line 1244
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z

    move-result p1

    goto :goto_3c

    .line 1247
    :cond_20
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_3b

    .line 1248
    const-string p1, "AutofillManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAugmentedAutofillWhitelist(): no service for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_3b
    move p1, v3

    .line 1252
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_47

    .line 1253
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1254
    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v3, -0x1

    .line 1253
    :goto_43
    invoke-static {p2, p3, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1255
    return-void

    .line 1252
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public setAuthenticationResult(Landroid/os/Bundle;III)V
    .registers 7

    .line 1082
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1083
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p4}, Lcom/android/server/autofill/AutofillManagerService;->access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p4

    check-cast p4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1084
    nop

    .line 1085
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v1

    .line 1084
    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationResultLocked(Landroid/os/Bundle;III)V

    .line 1086
    monitor-exit v0

    .line 1087
    return-void

    .line 1086
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setAutofillFailure(ILjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;I)V"
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$5200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1331
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p3}, Lcom/android/server/autofill/AutofillManagerService;->access$5300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1332
    if-eqz v1, :cond_19

    .line 1333
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result p3

    invoke-virtual {v1, p1, p3, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;)V

    goto :goto_34

    .line 1334
    :cond_19
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_34

    .line 1335
    const-string p1, "AutofillManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutofillFailure(): no service for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_34
    :goto_34
    monitor-exit v0

    .line 1338
    return-void

    .line 1337
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public setHasCallback(IIZ)V
    .registers 6

    .line 1091
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1092
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p2

    check-cast p2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1093
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, p1, v1, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1186
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1188
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1189
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1190
    if-eqz v2, :cond_1d

    .line 1191
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    goto :goto_38

    .line 1192
    :cond_1d
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_38

    .line 1193
    const-string p1, "AutofillManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserData(): no service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_38
    :goto_38
    monitor-exit v1

    .line 1196
    return-void

    .line 1195
    :catchall_3a
    move-exception p1

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .registers 30

    .line 1102
    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p11

    const-string v3, "activityToken"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/IBinder;

    .line 1103
    const-string v3, "appCallback"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/os/IBinder;

    .line 1104
    const-string v3, "autoFillId"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 1105
    const-string v3, "componentName"

    move-object/from16 v4, p9

    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/ComponentName;

    .line 1106
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1108
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v6, 0x0

    if-ne v1, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_4a

    :cond_49
    move v4, v6

    :goto_4a
    const-string/jumbo v7, "userId"

    invoke-static {v4, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1111
    :try_start_50
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_5d} :catch_a7

    .line 1114
    nop

    .line 1118
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$2100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/app/ActivityManagerInternal;->getTaskIdForActivity(Landroid/os/IBinder;Z)I

    move-result v6

    .line 1120
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$2200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1121
    :try_start_6f
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1122
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v7

    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1124
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2400(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v15

    .line 1122
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move/from16 v14, p10

    move/from16 v16, p8

    invoke-virtual/range {v4 .. v16}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J

    move-result-wide v3

    .line 1125
    monitor-exit v17
    :try_end_91
    .catchall {:try_start_6f .. :try_end_91} :catchall_a4

    .line 1126
    long-to-int v1, v3

    .line 1127
    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    .line 1128
    if-eqz v3, :cond_9e

    .line 1129
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$2500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V

    goto :goto_a3

    .line 1131
    :cond_9e
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v2, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1133
    :goto_a3
    return-void

    .line 1125
    :catchall_a4
    move-exception v0

    :try_start_a5
    monitor-exit v17
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v0

    .line 1112
    :catch_a7
    move-exception v0

    .line 1113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .registers 19

    .line 1317
    move-object v0, p0

    move/from16 v1, p7

    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$5000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1318
    :try_start_a
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->access$5100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1319
    if-eqz v3, :cond_25

    .line 1320
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v5

    move v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    goto :goto_40

    .line 1322
    :cond_25
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_40

    .line 1323
    const-string v0, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_40
    :goto_40
    monitor-exit v2

    .line 1326
    return-void

    .line 1325
    :catchall_42
    move-exception v0

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v0
.end method
