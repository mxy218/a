.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiCallbacks"
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

.field private final mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V
    .registers 4

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 1367
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    .line 1368
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 1369
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1370
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1371
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1372
    return-void
.end method

.method private checkFocus(III)Z
    .registers 5

    .line 1376
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 7

    .line 1383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1384
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1385
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1386
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v2

    .line 1387
    if-nez v2, :cond_3b

    .line 1388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addClient() from unknown userId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiClientInputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1392
    :cond_3b
    iget-object v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    :try_start_3e
    invoke-virtual {v2, p2, v0, p1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V

    .line 1394
    monitor-exit v1

    .line 1395
    return-void

    .line 1394
    :catchall_43
    move-exception p1

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1719
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1721
    :cond_b
    const-string v0, "Current Multi Client Input Method Manager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1723
    const-string p2, "mUserDataMap="

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    iget-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    if-eqz p2, :cond_28

    .line 1725
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1726
    iget-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1728
    :cond_28
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 1685
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1686
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1409
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1410
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1419
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1400
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 1401
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    .line 1698
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1699
    const/4 v0, 0x0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .line 1426
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1427
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 9

    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1478
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1479
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1480
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1481
    const/4 v4, 0x0

    if-nez v3, :cond_3c

    .line 1482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hideSoftInput() from unknown userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiClientInputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return v4

    .line 1486
    :cond_3c
    iget-object v1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1487
    :try_start_3f
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object p1

    .line 1488
    if-nez p1, :cond_47

    .line 1489
    monitor-exit v1

    return v4

    .line 1491
    :cond_47
    iget v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v2, v0, :cond_6d

    .line 1492
    const-string p2, "MultiClientInputMethodManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected calling UID="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    monitor-exit v1

    return v4

    .line 1496
    :cond_6d
    iget v0, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_81

    const/4 v2, 0x3

    if-eq v0, v2, :cond_76

    const/4 v2, 0x4

    if-eq v0, v2, :cond_76

    goto :goto_7e

    .line 1500
    :cond_76
    :try_start_76
    iget-object p1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {p1, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7b} :catch_7c
    .catchall {:try_start_76 .. :try_end_7b} :catchall_81

    .line 1502
    goto :goto_7e

    .line 1501
    :catch_7c
    move-exception p1

    .line 1503
    nop

    .line 1511
    :goto_7e
    const/4 p1, 0x1

    :try_start_7f
    monitor-exit v1

    return p1

    .line 1512
    :catchall_81
    move-exception p1

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    throw p1
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 2

    .line 1678
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1679
    const/4 v0, 0x0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7

    .line 1714
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 4

    .line 1706
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1707
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3

    .line 1692
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1693
    return-void
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 3

    .line 1672
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1673
    return-void
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 3

    .line 1658
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1659
    return-void
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 4

    .line 1665
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1666
    return-void
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 9

    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1435
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1436
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1437
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1438
    const/4 v4, 0x0

    if-nez v3, :cond_3d

    .line 1439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showSoftInput() from unknown userId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiClientInputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return v4

    .line 1443
    :cond_3d
    iget-object v1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1444
    :try_start_40
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object p1

    .line 1445
    if-nez p1, :cond_50

    .line 1446
    const-string p1, "MultiClientInputMethodManagerService"

    const-string/jumbo p2, "showSoftInput. client not found. ignoring."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    monitor-exit v1

    return v4

    .line 1449
    :cond_50
    iget v2, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v2, v0, :cond_76

    .line 1450
    const-string p2, "MultiClientInputMethodManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected calling UID="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v1

    return v4

    .line 1454
    :cond_76
    iget v0, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_78
    .catchall {:try_start_40 .. :try_end_78} :catchall_8a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7f

    goto :goto_87

    .line 1458
    :cond_7f
    :try_start_7f
    iget-object p1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {p1, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_84} :catch_85
    .catchall {:try_start_7f .. :try_end_84} :catchall_8a

    .line 1460
    goto :goto_87

    .line 1459
    :catch_85
    move-exception p1

    .line 1461
    nop

    .line 1469
    :goto_87
    const/4 p1, 0x1

    :try_start_88
    monitor-exit v1

    return p1

    .line 1470
    :catchall_8a
    move-exception p1

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 24

    .line 1528
    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1530
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1532
    if-nez v1, :cond_17

    .line 1533
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1536
    :cond_17
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_27

    iget-object v9, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v10, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1537
    invoke-static {v9, v4, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    move v9, v8

    goto :goto_28

    :cond_27
    move v9, v7

    .line 1539
    :goto_28
    if-eqz v3, :cond_4f

    if-nez v9, :cond_4f

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1545
    :cond_4f
    iget-object v9, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v9, v6}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v9

    .line 1546
    if-nez v9, :cond_81

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInputOrWindowGainedFocus() from unknown userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1552
    :cond_81
    iget-object v10, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1553
    :try_start_84
    invoke-virtual {v9, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v11

    .line 1554
    if-nez v11, :cond_8e

    .line 1555
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1557
    :cond_8e
    iget v1, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v1, v4, :cond_b6

    .line 1558
    const-string v0, "MultiClientInputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected calling UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1563
    :cond_b6
    iget v1, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    packed-switch v1, :pswitch_data_1c6

    .line 1574
    const-string v0, "MultiClientInputMethodManagerService"

    goto/16 :goto_1a9

    .line 1572
    :pswitch_bf  #0x5
    nop

    .line 1578
    nop

    .line 1579
    const/4 v1, 0x0

    if-eqz v2, :cond_dd

    .line 1580
    iget-object v4, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    .line 1581
    if-nez v4, :cond_de

    .line 1582
    new-instance v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->getNext()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;-><init>(Landroid/os/IBinder;I)V

    .line 1583
    iget-object v5, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 1579
    :cond_dd
    move-object v4, v1

    .line 1587
    :cond_de
    :goto_de
    iget v2, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v5, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v6, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->checkFocus(III)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 1589
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1592
    :cond_ee
    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v12, 0x4

    if-nez v3, :cond_117

    .line 1595
    iget v1, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    if-eq v1, v2, :cond_fa

    if-eq v1, v12, :cond_fa

    goto :goto_113

    .line 1598
    :cond_fa
    if-eqz v4, :cond_100

    .line 1599
    iget v0, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_fe
    .catchall {:try_start_84 .. :try_end_fe} :catchall_1c3

    move v6, v0

    goto :goto_101

    .line 1600
    :cond_100
    move v6, v0

    :goto_101
    nop

    .line 1602
    :try_start_102
    iget-object v0, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-object/from16 v1, p8

    move/from16 v2, p9

    move-object/from16 v3, p7

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_111} :catch_112
    .catchall {:try_start_102 .. :try_end_111} :catchall_1c3

    .line 1606
    goto :goto_113

    .line 1605
    :catch_112
    move-exception v0

    .line 1609
    :goto_113
    :try_start_113
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1612
    :cond_117
    iget v5, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    if-eq v5, v8, :cond_17c

    const/4 v6, 0x2

    if-eq v5, v6, :cond_17c

    if-eq v5, v2, :cond_132

    if-eq v5, v12, :cond_132

    const/4 v0, 0x5

    if-eq v5, v0, :cond_127

    .line 1650
    monitor-exit v10

    .line 1651
    return-object v1

    .line 1647
    :cond_127
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v1, "The client is already unregistered."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1625
    :cond_132
    iget v1, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v1, v8

    iput v1, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1626
    iget v1, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v1, :cond_13d

    .line 1627
    iput v7, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1630
    :cond_13d
    if-eqz v4, :cond_143

    .line 1631
    iget v0, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_141
    .catchall {:try_start_113 .. :try_end_141} :catchall_1c3

    move v6, v0

    goto :goto_144

    .line 1632
    :cond_143
    move v6, v0

    :goto_144
    nop

    .line 1634
    :try_start_145
    iget-object v0, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    move-object/from16 v1, p8

    move/from16 v2, p9

    move-object/from16 v3, p7

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_154} :catch_155
    .catchall {:try_start_145 .. :try_end_154} :catchall_1c3

    .line 1638
    goto :goto_156

    .line 1637
    :catch_155
    move-exception v0

    .line 1639
    :goto_156
    :try_start_156
    iput v12, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1640
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1643
    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1644
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget v5, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v1

    move-object p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v10

    .line 1640
    return-object v0

    .line 1615
    :cond_17c
    iget v0, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v0, v8

    iput v0, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1616
    iget v0, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v0, :cond_187

    .line 1617
    iput v7, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1619
    :cond_187
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1621
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget v5, v11, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v1

    move-object p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v10

    .line 1619
    return-object v0

    .line 1569
    :pswitch_1a5  #0x1, 0x2, 0x3, 0x4, 0x6
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1574
    :goto_1a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v10

    return-object v0

    .line 1650
    :catchall_1c3
    move-exception v0

    monitor-exit v10
    :try_end_1c5
    .catchall {:try_start_156 .. :try_end_1c5} :catchall_1c3

    throw v0

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1a5  #00000001
        :pswitch_1a5  #00000002
        :pswitch_1a5  #00000003
        :pswitch_1a5  #00000004
        :pswitch_bf  #00000005
        :pswitch_1a5  #00000006
    .end packed-switch
.end method
