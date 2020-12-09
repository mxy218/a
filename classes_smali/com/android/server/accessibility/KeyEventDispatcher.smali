.class public Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;,
        Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "KeyEventDispatcher"

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x1

.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field private mKeyEventTimeoutHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMessageTypeForSendKeyEvent:I

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V
    .registers 8

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 86
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 87
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    goto :goto_2b

    .line 90
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 92
    :goto_2b
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 93
    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    .line 94
    new-instance p2, Landroid/os/Handler;

    .line 95
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 96
    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 97
    iput-object p4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;Landroid/os/Handler;)V
    .registers 6

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    .line 109
    iput-object p5, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 223
    if-nez v0, :cond_10

    .line 224
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher$1;)V

    .line 226
    :cond_10
    iput-object p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 227
    iput p2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    .line 228
    const/4 p1, 0x0

    iput p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 229
    iput-boolean p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 230
    return-object v0
.end method

.method private static removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;I)",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;"
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 237
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 238
    iget-object v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 247
    return-object v1

    .line 236
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .registers 8

    .line 258
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_a

    .line 259
    return v2

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 262
    iget-boolean v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez v0, :cond_2f

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_1c

    .line 268
    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 270
    :cond_1c
    iget v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    const/high16 v3, 0x40000000  # 2.0f

    or-int/2addr v0, v3

    .line 271
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    iget-object v5, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 272
    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    goto :goto_34

    .line 275
    :cond_2f
    iget-object v0, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 277
    :goto_34
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 278
    return v1
.end method


# virtual methods
.method public flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 192
    if-eqz v1, :cond_25

    .line 193
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 195
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 197
    :cond_20
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_25
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyEventDispatcher"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 p1, 0x0

    return p1

    .line 208
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 209
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_26
    iget-object v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 213
    goto :goto_4a

    .line 216
    :cond_49
    goto :goto_30

    .line 217
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 218
    return v1

    .line 217
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            ">;)Z"
        }
    .end annotation

    .line 128
    nop

    .line 129
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p1

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_45

    .line 131
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .line 132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v5

    invoke-interface {v3, p1, v5}, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;->onKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 133
    if-nez v2, :cond_26

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v2

    .line 136
    :cond_26
    iget-object v5, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 137
    if-nez v5, :cond_3a

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget v3, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 130
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 146
    :cond_45
    if-nez v2, :cond_4b

    .line 147
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    .line 148
    return v0

    .line 151
    :cond_4b
    iget-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    return v4
.end method

.method public setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    .registers 10

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 167
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1, p3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object p1

    .line 168
    if-eqz p1, :cond_36

    .line 169
    if-eqz p2, :cond_33

    iget-boolean p3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez p3, :cond_33

    .line 170
    iput-boolean p2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_38

    .line 173
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 176
    :try_start_2a
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    goto :goto_33

    .line 176
    :catchall_2e
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 179
    :cond_33
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 181
    :cond_36
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    throw p1
.end method
