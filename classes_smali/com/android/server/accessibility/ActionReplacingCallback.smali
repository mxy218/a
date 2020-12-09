.class public Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "ActionReplacingCallback.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ActionReplacingCallback"


# instance fields
.field private final mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field mDone:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mInteractionId:I

.field private final mLock:Ljava/lang/Object;

.field mMultiNodeCallbackHappened:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mNodesFromOriginalWindow:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNodesWithReplacementActions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field mSingleNodeCallbackHappened:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .registers 23

    .line 70
    move-object/from16 v13, p0

    move/from16 v0, p3

    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 71
    move-object/from16 v1, p1

    iput-object v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 72
    move-object/from16 v1, p2

    iput-object v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 73
    iput v0, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 78
    const/4 v12, 0x1

    :try_start_1d
    iget-object v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_21} :catch_37
    .catchall {:try_start_1d .. :try_end_21} :catchall_35

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move v13, v12

    move-object v12, v0

    :try_start_2f
    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_35

    goto :goto_3e

    .line 81
    :catch_33
    move-exception v0

    goto :goto_39

    .line 88
    :catchall_35
    move-exception v0

    goto :goto_43

    .line 81
    :catch_37
    move-exception v0

    move v13, v12

    .line 86
    :goto_39
    move-object/from16 v1, p0

    move v2, v13

    :try_start_3c
    iput-boolean v2, v1, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_35

    .line 88
    :goto_3e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :goto_43
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private recycleReplaceActionNodesLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 238
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 240
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 238
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 242
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 243
    return-void
.end method

.method private replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 207
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    if-eqz v1, :cond_8f

    .line 210
    move v1, v0

    :goto_25
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 211
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 213
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8c

    .line 215
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v3

    .line 216
    if-eqz v3, :cond_62

    .line 217
    move v4, v0

    :goto_46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_58

    .line 218
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 221
    :cond_58
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 222
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 224
    :cond_62
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 225
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 226
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 227
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 228
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 229
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 210
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 233
    :cond_8f
    return-void
.end method

.method private replaceInfoActionsAndCallService()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 151
    monitor-exit v0

    return-void

    .line 153
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_12

    .line 154
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 156
    :cond_12
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->recycleReplaceActionNodesLocked()V

    .line 157
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 158
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    .line 159
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    .line 161
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    .line 166
    goto :goto_24

    .line 162
    :catch_23
    move-exception v0

    .line 167
    :goto_24
    return-void

    .line 159
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private replaceInfosActionsAndCallService()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    if-eqz v1, :cond_24

    .line 179
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 180
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 183
    :cond_24
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->recycleReplaceActionNodesLocked()V

    .line 184
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    if-nez v1, :cond_2d

    .line 185
    const/4 v1, 0x0

    goto :goto_34

    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    :goto_34
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    .line 187
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_42

    .line 189
    :try_start_38
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    .line 194
    goto :goto_41

    .line 190
    :catch_40
    move-exception v0

    .line 195
    :goto_41
    return-void

    .line 187
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method


# virtual methods
.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    if-ne p2, v1, :cond_15

    .line 97
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 103
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSingleNodeCallbackHappened:Z

    .line 104
    iget-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 105
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 106
    if-eqz p1, :cond_14

    .line 107
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 109
    :cond_14
    return-void

    .line 99
    :cond_15
    :try_start_15
    const-string p1, "ActionReplacingCallback"

    const-string p2, "Callback with unexpected interactionId"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    monitor-exit v0

    return-void

    .line 105
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_b

    .line 118
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    goto :goto_12

    .line 119
    :cond_b
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    add-int/2addr v1, v2

    if-ne p2, v1, :cond_24

    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 125
    :goto_12
    iget-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSingleNodeCallbackHappened:Z

    .line 126
    iget-boolean p2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 128
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 129
    if-eqz p1, :cond_1e

    .line 130
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 132
    :cond_1e
    if-eqz p2, :cond_23

    .line 133
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfosActionsAndCallService()V

    .line 135
    :cond_23
    return-void

    .line 122
    :cond_24
    :try_start_24
    const-string p1, "ActionReplacingCallback"

    const-string p2, "Callback with unexpected interactionId"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v0

    return-void

    .line 128
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    .line 142
    return-void
.end method
