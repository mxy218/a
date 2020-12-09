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
    .registers 2

    .line 1223
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 1224
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1225
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1226
    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .registers 9

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
    if-nez v1, :cond_25

    .line 1280
    const-string p2, "MultiClientInputMethodManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown clientId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    monitor-exit v0

    return-void

    .line 1283
    :cond_25
    iget p1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_43

    .line 1297
    const-string p1, "MultiClientInputMethodManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_5a

    goto :goto_55

    .line 1286
    :cond_43
    :try_start_43
    iget-object p1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_57
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5a

    .line 1290
    nop

    .line 1291
    const/4 p1, 0x3

    :try_start_4c
    iput p1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1292
    iput-object p4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1293
    iput-object p2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1294
    iput-object p3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1295
    nop

    .line 1300
    :goto_55
    monitor-exit v0

    .line 1301
    return-void

    .line 1287
    :catch_57
    move-exception p1

    .line 1289
    monitor-exit v0

    return-void

    .line 1300
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
    .registers 8

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
    const/4 v2, 0x0

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
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    if-ne v4, p1, :cond_22

    .line 1240
    iget-object p1, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    monitor-exit v0

    return-object p1

    .line 1235
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1244
    :cond_25
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1245
    sget-object v2, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7db

    .line 1247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1246
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    .line 1245
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1248
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v2, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    new-instance v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    invoke-direct {v3, v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;-><init>(Landroid/os/Binder;I)V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1249
    monitor-exit v0

    return-object v1

    .line 1250
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    .registers 7

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
    const/4 v2, 0x0

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
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    if-ne v4, p1, :cond_26

    .line 1264
    iget-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object p1, p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1265
    goto :goto_29

    .line 1260
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1268
    :cond_29
    :goto_29
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 4

    .line 1333
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result p1

    return p1
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 6

    .line 1307
    iget-object p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object p3, p3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1308
    :try_start_5
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1309
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v0

    .line 1310
    if-nez v0, :cond_25

    .line 1311
    const-string p2, "MultiClientInputMethodManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    monitor-exit p3

    return-void

    .line 1314
    :cond_25
    iget-object p1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    .line 1315
    iget v1, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I

    if-ne v1, p2, :cond_41

    .line 1316
    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowToken:Landroid/os/IBinder;

    .line 1325
    :cond_41
    goto :goto_2f

    .line 1327
    :cond_42
    monitor-exit p3

    .line 1328
    return-void

    .line 1327
    :catchall_44
    move-exception p1

    monitor-exit p3
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public setActive(IZ)V
    .registers 6

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
    if-nez v1, :cond_25

    .line 1343
    const-string p2, "MultiClientInputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_31

    return-void

    .line 1347
    :cond_25
    :try_start_25
    iget-object p1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_2e
    .catchall {:try_start_25 .. :try_end_2b} :catchall_31

    .line 1350
    nop

    .line 1351
    :try_start_2c
    monitor-exit v0

    .line 1352
    return-void

    .line 1348
    :catch_2e
    move-exception p1

    .line 1349
    monitor-exit v0

    return-void

    .line 1351
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw p1
.end method
