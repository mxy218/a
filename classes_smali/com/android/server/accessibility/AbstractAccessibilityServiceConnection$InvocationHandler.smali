.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsSoftKeyboardCallbackEnabled:Z

.field private final mMagnificationCallbackState:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 4

    .line 1290
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 1291
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1286
    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 1288
    iput-boolean p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1296
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1297
    const/4 v1, 0x1

    if-eq v0, v1, :cond_78

    const/4 v2, 0x2

    if-eq v0, v2, :cond_72

    const/4 v2, 0x5

    if-eq v0, v2, :cond_46

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x7

    if-eq v0, v2, :cond_38

    const/16 v2, 0x8

    if-ne v0, v2, :cond_21

    .line 1328
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1329
    :goto_1b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 1330
    goto :goto_80

    .line 1333
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1324
    :cond_38
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1325
    goto :goto_80

    .line 1319
    :cond_3e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1320
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1321
    goto :goto_80

    .line 1308
    :cond_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1309
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/graphics/Region;

    .line 1310
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1311
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1312
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1313
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1314
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static/range {v1 .. v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V

    .line 1315
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1316
    goto :goto_80

    .line 1304
    :cond_72
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1305
    goto :goto_80

    .line 1299
    :cond_78
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1300
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1301
    nop

    .line 1336
    :goto_80
    return-void
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 4

    .line 1368
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit v0

    return p1

    .line 1370
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4

    .line 1392
    nop

    .line 1393
    const/4 v0, 0x0

    .line 1392
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1394
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1395
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1387
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1389
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 8

    .line 1340
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1342
    monitor-exit v0

    return-void

    .line 1344
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    .line 1346
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1347
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1348
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1349
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1350
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1351
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1353
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1354
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1355
    return-void

    .line 1344
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4

    .line 1374
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    .line 1375
    return-void

    .line 1378
    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1379
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 5

    .line 1358
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    if-eqz p2, :cond_12

    .line 1360
    :try_start_7
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1362
    :cond_12
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1364
    :goto_17
    monitor-exit v0

    .line 1365
    return-void

    .line 1364
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2

    .line 1383
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1384
    return-void
.end method
