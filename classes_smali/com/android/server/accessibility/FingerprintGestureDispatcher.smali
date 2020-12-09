.class public Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "FingerprintGestureDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureDispatcher"

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2


# instance fields
.field private final mCapturingClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareSupportsGestures:Z

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredReadOnlyExceptInHandler:Z


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 58
    const p1, 0x1110086

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 7

    .line 70
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 72
    const p1, 0x1110086

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 75
    iput-object p4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "FingerprintGestureDispatcher"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_25

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 178
    :try_start_c
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 179
    iput-boolean v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_19
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 183
    :goto_13
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    goto :goto_20

    .line 183
    :catchall_17
    move-exception p1

    goto :goto_21

    .line 180
    :catch_19
    move-exception p1

    .line 181
    :try_start_1a
    const-string p1, "Failed to register for fingerprint activity callbacks"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    goto :goto_13

    .line 185
    :goto_20
    return v1

    .line 183
    :goto_21
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 186
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_48

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 189
    :try_start_2e
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_39
    .catchall {:try_start_2e .. :try_end_33} :catchall_37

    .line 193
    :goto_33
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    goto :goto_40

    .line 193
    :catchall_37
    move-exception p1

    goto :goto_44

    .line 190
    :catch_39
    move-exception p1

    .line 191
    :try_start_3a
    const-string p1, "Failed to unregister for fingerprint activity callbacks"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    goto :goto_33

    .line 195
    :goto_40
    iput-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 196
    nop

    .line 200
    return v3

    .line 193
    :goto_44
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 197
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 5

    .line 119
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 123
    :try_start_a
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_1b
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 127
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    return v0

    .line 127
    :catchall_16
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 124
    :catch_1b
    move-exception v0

    .line 125
    nop

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return v1
.end method

.method public onClientActiveChanged(Z)V
    .registers 7

    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_5

    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    :try_start_a
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 112
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    if-nez p1, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    move v4, v1

    :goto_1f
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGestureDetectionActiveChanged(Z)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 115
    :cond_25
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p1
.end method

.method public onFingerprintGesture(I)Z
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 143
    monitor-exit v0

    return v2

    .line 145
    :cond_e
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_3e

    .line 163
    monitor-exit v0

    goto :goto_3a

    .line 155
    :pswitch_14  #0x11b
    nop

    .line 157
    move p1, v1

    goto :goto_1e

    .line 159
    :pswitch_17  #0x11a
    const/4 p1, 0x2

    .line 161
    goto :goto_1e

    .line 151
    :pswitch_19  #0x119
    const/16 p1, 0x8

    .line 153
    goto :goto_1e

    .line 147
    :pswitch_1c  #0x118
    const/4 p1, 0x4

    .line 149
    nop

    .line 165
    :goto_1e
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3b

    .line 167
    nop

    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 168
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGesture(I)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 170
    :cond_39
    return v1

    .line 163
    :goto_3a
    return v2

    .line 166
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :pswitch_data_3e
    .packed-switch 0x118
        :pswitch_1c  #00000118
        :pswitch_19  #00000119
        :pswitch_17  #0000011a
        :pswitch_14  #0000011b
    .end packed-switch
.end method

.method public updateClientList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_8
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    const/4 v1, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 90
    invoke-interface {v2}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 91
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 94
    :cond_28
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 95
    iget-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-eqz p1, :cond_4d

    .line 96
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4d

    .line 99
    :cond_3f
    iget-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-nez p1, :cond_4d

    .line 100
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw p1
.end method
