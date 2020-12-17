.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;
.super Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImeCallbacks"
.end annotation


# instance fields
.field private final mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .registers 3
    .param p1, "perUserData"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1223
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 1224
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1225
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1226
    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10
    .param p1, "clientId"  # I
    .param p2, "inputMethodSession"  # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "multiSessionInputMethodSession"  # Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    .param p4, "writeChannel"  # Landroid/view/InputChannel;

    .line 1276
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_5
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1278
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1279
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_25

    .line 1280
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    monitor-exit v0

    return-void

    .line 1283
    :cond_25
    iget v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_43

    .line 1297
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_5a

    goto :goto_55

    .line 1286
    :cond_43
    :try_start_43
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_57
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5a

    .line 1290
    nop

    .line 1291
    const/4 v2, 0x3

    :try_start_4c
    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1292
    iput-object p4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1293
    iput-object p2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1294
    iput-object p3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1295
    nop

    .line 1300
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_55
    monitor-exit v0

    .line 1301
    return-void

    .line 1287
    .restart local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_57
    move-exception v2

    .line 1289
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1300
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v2  # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
    .registers 9
    .param p1, "displayId"  # I

    .line 1231
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_5
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1235
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_25

    .line 1236
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1237
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1239
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    if-ne v4, p1, :cond_22

    .line 1240
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    monitor-exit v0

    return-object v4

    .line 1235
    .end local v3  # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1244
    .end local v2  # "i":I
    :cond_25
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1245
    .local v2, "token":Landroid/os/Binder;
    sget-object v3, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v5, 0x7db

    .line 1247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1246
    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1245
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1248
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    invoke-direct {v4, v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;-><init>(Landroid/os/Binder;I)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1249
    monitor-exit v0

    return-object v2

    .line 1250
    .end local v1  # "numTokens":I
    .end local v2  # "token":Landroid/os/Binder;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1256
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_5
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1260
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_29

    .line 1261
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1262
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1263
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    if-ne v4, p1, :cond_26

    .line 1264
    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v4, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1265
    goto :goto_29

    .line 1260
    .end local v3  # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1268
    .end local v1  # "numTokens":I
    .end local v2  # "i":I
    :cond_29
    :goto_29
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "uid"  # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    return v0
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 9
    .param p1, "clientId"  # I
    .param p2, "targetWindowHandle"  # I
    .param p3, "imeWindowToken"  # Landroid/os/IBinder;

    .line 1307
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1308
    :try_start_5
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1309
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1310
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_25

    .line 1311
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    monitor-exit v0

    return-void

    .line 1314
    :cond_25
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    .line 1315
    .local v3, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I

    if-ne v4, p2, :cond_41

    .line 1316
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowToken:Landroid/os/IBinder;

    .line 1325
    .end local v3  # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :cond_41
    goto :goto_2f

    .line 1327
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_42
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public setActive(IZ)V
    .registers 8
    .param p1, "clientId"  # I
    .param p2, "active"  # Z

    .line 1339
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1340
    :try_start_5
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1341
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1342
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_25

    .line 1343
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_31

    return-void

    .line 1347
    :cond_25
    :try_start_25
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_2e
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    .line 1350
    nop

    .line 1351
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :try_start_2c
    monitor-exit v0

    .line 1352
    return-void

    .line 1348
    .restart local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_2e
    move-exception v2

    .line 1349
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1351
    .end local v1  # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v2  # "e":Landroid/os/RemoteException;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw v1
.end method
