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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1299
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 1300
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1295
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 1297
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"  # Landroid/os/Message;

    .line 1305
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1306
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_76

    const/4 v2, 0x5

    if-eq v0, v2, :cond_46

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x7

    if-eq v0, v2, :cond_38

    const/16 v2, 0x8

    if-ne v0, v2, :cond_21

    .line 1337
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1338
    .local v1, "available":Z
    :goto_1b
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 1339
    .end local v1  # "available":Z
    goto :goto_84

    .line 1342
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    :cond_38
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1334
    goto :goto_84

    .line 1328
    :cond_3e
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1329
    .local v1, "showState":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1330
    .end local v1  # "showState":I
    goto :goto_84

    .line 1317
    :cond_46
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1318
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 1319
    .local v2, "region":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1320
    .local v9, "scale":F
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 1321
    .local v10, "centerX":F
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 1322
    .local v11, "centerY":F
    iget v12, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1323
    .local v12, "displayId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    move v4, v12

    move-object v5, v2

    move v6, v9

    move v7, v10

    move v8, v11

    invoke-static/range {v3 .. v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V

    .line 1324
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1325
    .end local v1  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2  # "region":Landroid/graphics/Region;
    .end local v9  # "scale":F
    .end local v10  # "centerX":F
    .end local v11  # "centerY":F
    .end local v12  # "displayId":I
    goto :goto_84

    .line 1313
    :cond_76
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1314
    goto :goto_84

    .line 1308
    :cond_7c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1309
    .local v1, "gestureId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1310
    .end local v1  # "gestureId":I
    nop

    .line 1345
    :goto_84
    return-void
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 4
    .param p1, "displayId"  # I

    .line 1377
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1378
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1379
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 4
    .param p1, "available"  # Z

    .line 1401
    nop

    .line 1402
    const/4 v0, 0x0

    .line 1401
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1403
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1404
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1396
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1397
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1398
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "region"  # Landroid/graphics/Region;
    .param p3, "scale"  # F
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F

    .line 1349
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 1351
    monitor-exit v0

    return-void

    .line 1353
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    .line 1355
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1356
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1357
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1358
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1359
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1360
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1362
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1363
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1364
    return-void

    .line 1353
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "msg":Landroid/os/Message;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 4
    .param p1, "showState"  # I

    .line 1383
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_5

    .line 1384
    return-void

    .line 1387
    :cond_5
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1388
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1389
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "enabled"  # Z

    .line 1367
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    if-eqz p2, :cond_12

    .line 1369
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1371
    :cond_12
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1373
    :goto_17
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 1392
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1393
    return-void
.end method
