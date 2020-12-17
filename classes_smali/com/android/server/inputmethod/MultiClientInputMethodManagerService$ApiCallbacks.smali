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
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "userDataMap"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
    .param p3, "inputMethodInfoMap"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 1367
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    .line 1368
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    .line 1369
    iput-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mInputMethodInfoMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    .line 1370
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1371
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1372
    return-void
.end method

.method private checkFocus(III)Z
    .registers 5
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .param p3, "displayId"  # I

    .line 1376
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 10
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p3, "selfReportedDisplayId"  # I

    .line 1383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1384
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1385
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1386
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1387
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v3, :cond_3b

    .line 1388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addClient() from unknown userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiClientInputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1392
    :cond_3b
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1393
    :try_start_3e
    invoke-virtual {v3, v0, v1, p1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->addClientLocked(IILcom/android/internal/view/IInputMethodClient;I)V

    .line 1394
    monitor-exit v4

    .line 1395
    return-void

    .line 1394
    :catchall_43
    move-exception v5

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw v5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1719
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "MultiClientInputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1720
    :cond_b
    const-string v0, "  "

    .line 1721
    .local v0, "prefixChild":Ljava/lang/String;
    const-string v1, "Current Multi Client Input Method Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1723
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v2, "mUserDataMap="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    if-eqz v2, :cond_2b

    .line 1725
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1726
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1728
    :cond_2b
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
    .param p1, "userId"  # I
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

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 4
    .param p1, "imiId"  # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"  # Z
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

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"  # I
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

    move-result-object v0

    return-object v0
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
    .registers 14
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"  # I
    .param p3, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1478
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1479
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1480
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1481
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_3c

    .line 1482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideSoftInput() from unknown userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiClientInputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return v4

    .line 1486
    :cond_3c
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1487
    :try_start_3f
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1488
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_47

    .line 1489
    monitor-exit v5

    return v4

    .line 1491
    :cond_47
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_6d

    .line 1492
    const-string v7, "MultiClientInputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected calling UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " actual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    monitor-exit v5

    return v4

    .line 1496
    :cond_6d
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_81

    const/4 v7, 0x3

    if-eq v4, v7, :cond_76

    const/4 v7, 0x4

    if-eq v4, v7, :cond_76

    goto :goto_7e

    .line 1500
    :cond_76
    :try_start_76
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7b} :catch_7c
    .catchall {:try_start_76 .. :try_end_7b} :catchall_81

    .line 1502
    goto :goto_7e

    .line 1501
    :catch_7c
    move-exception v4

    .line 1503
    nop

    .line 1511
    :goto_7e
    const/4 v4, 0x1

    :try_start_7f
    monitor-exit v5

    return v4

    .line 1512
    .end local v6  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_81
    move-exception v4

    monitor-exit v5
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    throw v4
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 2

    .line 1678
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1679
    const/4 v0, 0x0

    return v0
.end method

.method public mzIsShown()Z
    .registers 2

    .line 1732
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1733
    const/4 v0, 0x0

    return v0
.end method

.method public mzSetFlags(II)I
    .registers 4
    .param p1, "flags"  # I
    .param p2, "mask"  # I

    .line 1738
    const/4 v0, 0x0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 1714
    return-void
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 4
    .param p1, "parentClient"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"  # I
    .param p3, "matrixValues"  # [F

    .line 1706
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1707
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3
    .param p1, "imiId"  # Ljava/lang/String;
    .param p2, "subtypes"  # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 1692
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1693
    return-void
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"  # Ljava/lang/String;

    .line 1672
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1673
    return-void
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 3
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"  # I

    .line 1658
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1659
    return-void
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 4
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"  # I
    .param p3, "displayId"  # I

    .line 1665
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    .line 1666
    return-void
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 14
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"  # I
    .param p3, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1435
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1436
    .local v1, "callingPid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1437
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v3

    .line 1438
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    const/4 v4, 0x0

    if-nez v3, :cond_3d

    .line 1439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSoftInput() from unknown userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MultiClientInputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return v4

    .line 1443
    :cond_3d
    iget-object v5, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1444
    :try_start_40
    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v6

    .line 1445
    .local v6, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v6, :cond_50

    .line 1446
    const-string v7, "MultiClientInputMethodManagerService"

    const-string/jumbo v8, "showSoftInput. client not found. ignoring."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    monitor-exit v5

    return v4

    .line 1449
    :cond_50
    iget v7, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    if-eq v7, v0, :cond_76

    .line 1450
    const-string v7, "MultiClientInputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected calling UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " actual="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v5

    return v4

    .line 1454
    :cond_76
    iget v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_78
    .catchall {:try_start_40 .. :try_end_78} :catchall_8a

    const/4 v7, 0x3

    if-eq v4, v7, :cond_7f

    const/4 v7, 0x4

    if-eq v4, v7, :cond_7f

    goto :goto_87

    .line 1458
    :cond_7f
    :try_start_7f
    iget-object v4, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-interface {v4, p2, p3}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_84} :catch_85
    .catchall {:try_start_7f .. :try_end_84} :catchall_8a

    .line 1460
    goto :goto_87

    .line 1459
    :catch_85
    move-exception v4

    .line 1461
    nop

    .line 1469
    :goto_87
    const/4 v4, 0x1

    :try_start_88
    monitor-exit v5

    return v4

    .line 1470
    .end local v6  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_8a
    move-exception v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8a

    throw v4
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 36
    .param p1, "startInputReason"  # I
    .param p2, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"  # Landroid/os/IBinder;
    .param p4, "startInputFlags"  # I
    .param p5, "softInputMode"  # I
    .param p6, "windowFlags"  # I
    .param p7, "editorInfo"  # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"  # I
    .param p10, "unverifiedTargetSdkVersion"  # I

    .line 1528
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1529
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1530
    .local v13, "callingPid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1532
    .local v14, "userId":I
    if-nez v2, :cond_19

    .line 1533
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1536
    :cond_19
    const/4 v4, 0x1

    if-eqz v11, :cond_28

    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v6, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1537
    invoke-static {v5, v12, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v4

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    move v15, v5

    .line 1539
    .local v15, "packageNameVerified":Z
    if-eqz v11, :cond_51

    if-nez v15, :cond_51

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1545
    :cond_51
    iget-object v5, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->mUserDataMap:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;

    invoke-virtual {v5, v14}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    move-result-object v9

    .line 1546
    .local v9, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    if-nez v9, :cond_83

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocus() from unknown userId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MultiClientInputMethodManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1552
    :cond_83
    iget-object v8, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1553
    :try_start_86
    invoke-virtual {v9, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v5
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_1ee

    move-object v7, v5

    .line 1554
    .local v7, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v7, :cond_97

    .line 1555
    :try_start_8d
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    return-object v0

    .line 1650
    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catchall_91
    move-exception v0

    move-object/from16 v16, v8

    move-object v3, v9

    goto/16 :goto_1f2

    .line 1557
    .restart local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_97
    :try_start_97
    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_1ee

    if-eq v5, v12, :cond_bf

    .line 1558
    :try_start_9b
    const-string v0, "MultiClientInputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected calling UID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_be
    .catchall {:try_start_9b .. :try_end_be} :catchall_91

    return-object v0

    .line 1563
    :cond_bf
    :try_start_bf
    iget v5, v9, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I
    :try_end_c1
    .catchall {:try_start_bf .. :try_end_c1} :catchall_1ee

    packed-switch v5, :pswitch_data_1f6

    .line 1574
    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .local v2, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :try_start_c8
    const-string v0, "MultiClientInputMethodManagerService"
    :try_end_ca
    .catchall {:try_start_c8 .. :try_end_ca} :catchall_1f4

    goto/16 :goto_1d4

    .line 1572
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :pswitch_cc  #0x5
    nop

    .line 1578
    const/4 v5, 0x0

    .line 1579
    .local v5, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    if-eqz v3, :cond_ee

    .line 1580
    :try_start_d0
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    move-object v5, v6

    .line 1581
    if-nez v5, :cond_ec

    .line 1582
    new-instance v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->getNext()I

    move-result v10

    invoke-direct {v6, v3, v10}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;-><init>(Landroid/os/IBinder;I)V

    move-object v5, v6

    .line 1583
    iget-object v6, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ea
    .catchall {:try_start_d0 .. :try_end_ea} :catchall_91

    move-object v6, v5

    goto :goto_ef

    .line 1581
    :cond_ec
    move-object v6, v5

    goto :goto_ef

    .line 1579
    :cond_ee
    move-object v6, v5

    .line 1587
    .end local v5  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v6, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :goto_ef
    :try_start_ef
    iget v5, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    iget v10, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    iget v0, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    invoke-direct {v1, v5, v10, v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;->checkFocus(III)Z

    move-result v0
    :try_end_f9
    .catchall {:try_start_ef .. :try_end_f9} :catchall_1ee

    if-nez v0, :cond_ff

    .line 1589
    :try_start_fb
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    monitor-exit v8
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_91

    return-object v0

    .line 1592
    :cond_ff
    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v10, 0x4

    if-nez v11, :cond_139

    .line 1595
    :try_start_104
    iget v4, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I
    :try_end_106
    .catchall {:try_start_104 .. :try_end_106} :catchall_1ee

    if-eq v4, v5, :cond_110

    if-eq v4, v10, :cond_110

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    goto :goto_135

    .line 1598
    :cond_110
    if-eqz v6, :cond_116

    .line 1599
    :try_start_112
    iget v0, v6, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_114
    .catchall {:try_start_112 .. :try_end_114} :catchall_91

    move v10, v0

    goto :goto_117

    .line 1600
    :cond_116
    move v10, v0

    :goto_117
    nop

    .line 1602
    .local v10, "windowHandle":I
    :try_start_118
    iget-object v4, v7, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_11a} :catch_12f
    .catchall {:try_start_118 .. :try_end_11a} :catchall_1ee

    move-object/from16 v5, p8

    move-object v1, v6

    .end local v6  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v1, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    move/from16 v6, p9

    move-object v2, v7

    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    move-object/from16 v7, p7

    move-object/from16 v16, v8

    move/from16 v8, p4

    move-object v3, v9

    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    move/from16 v9, p5

    :try_start_129
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12c} :catch_12d
    .catchall {:try_start_129 .. :try_end_12c} :catchall_1f4

    .line 1606
    goto :goto_135

    .line 1605
    :catch_12d
    move-exception v0

    goto :goto_135

    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v6  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :catch_12f
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .line 1609
    .end local v6  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .end local v10  # "windowHandle":I
    .restart local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :goto_135
    :try_start_135
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1612
    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v6  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :cond_139
    move-object v1, v6

    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v6  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    iget v6, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    if-eq v6, v4, :cond_1aa

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1aa

    if-eq v6, v5, :cond_15a

    if-eq v6, v10, :cond_15a

    const/4 v0, 0x5

    if-eq v6, v0, :cond_14f

    .line 1650
    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    monitor-exit v16

    .line 1651
    const/4 v0, 0x0

    return-object v0

    .line 1647
    .restart local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_14f
    const-string v0, "MultiClientInputMethodManagerService"

    const-string v4, "The client is already unregistered."

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_CLIENT:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1625
    :cond_15a
    iget v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1626
    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v4, :cond_166

    .line 1627
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1630
    :cond_166
    if-eqz v1, :cond_16b

    .line 1631
    iget v0, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I
    :try_end_16a
    .catchall {:try_start_135 .. :try_end_16a} :catchall_1f4

    goto :goto_16c

    .line 1632
    :cond_16b
    nop

    :goto_16c
    move v9, v10

    move v10, v0

    .line 1634
    .restart local v10  # "windowHandle":I
    :try_start_16e
    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_170} :catch_183
    .catchall {:try_start_16e .. :try_end_170} :catchall_1f4

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p7

    move/from16 v8, p4

    move-object/from16 v17, v1

    move v1, v9

    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .local v17, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    move/from16 v9, p5

    :try_start_17d
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;->startInputOrWindowGainedFocus(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;III)V
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_17d .. :try_end_180} :catch_181
    .catchall {:try_start_17d .. :try_end_180} :catchall_1f4

    .line 1638
    goto :goto_187

    .line 1637
    :catch_181
    move-exception v0

    goto :goto_187

    .end local v17  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :catch_183
    move-exception v0

    move-object/from16 v17, v1

    move v1, v9

    .line 1639
    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :goto_187
    :try_start_187
    iput v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1640
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v19, 0x0

    iget-object v1, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    iget-object v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1643
    invoke-virtual {v4}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v21

    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1644
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v22

    iget v4, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v1

    move/from16 v23, v4

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1640
    return-object v0

    .line 1612
    .end local v10  # "windowHandle":I
    .end local v17  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :cond_1aa
    move-object/from16 v17, v1

    .line 1615
    .end local v1  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v17  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1616
    iget v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    if-gez v0, :cond_1b8

    .line 1617
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    .line 1619
    :cond_1b8
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 1621
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    monitor-exit v16

    .line 1619
    return-object v0

    .line 1569
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .end local v17  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .restart local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :pswitch_1cc  #0x1, 0x2, 0x3, 0x4, 0x6
    move-object v2, v7

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v7  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .restart local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1574
    :goto_1d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    monitor-exit v16

    return-object v0

    .line 1650
    .end local v2  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :catchall_1ee
    move-exception v0

    move-object/from16 v16, v8

    move-object v3, v9

    .end local v9  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .restart local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :goto_1f2
    monitor-exit v16
    :try_end_1f3
    .catchall {:try_start_187 .. :try_end_1f3} :catchall_1f4

    throw v0

    :catchall_1f4
    move-exception v0

    goto :goto_1f2

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1cc  #00000001
        :pswitch_1cc  #00000002
        :pswitch_1cc  #00000003
        :pswitch_1cc  #00000004
        :pswitch_cc  #00000005
        :pswitch_1cc  #00000006
    .end packed-switch
.end method
