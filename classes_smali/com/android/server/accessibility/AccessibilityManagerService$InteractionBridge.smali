.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final COMPONENT_NAME:Landroid/content/ComponentName;

.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 20

    .line 3030
    move-object/from16 v15, p0

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.server.accessibility"

    const-string v3, "InteractionBridge"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 3031
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    move-object v14, v1

    .line 3032
    .local v14, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 3033
    iget v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3034
    iget v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v14, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3036
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3037
    :try_start_2f
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3038
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_88

    .line 3039
    new-instance v16, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;

    .line 3040
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 3041
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2508()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v10

    .line 3042
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v12

    .line 3043
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;

    move-result-object v13

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v6, v14

    move-object/from16 v11, p1

    move-object/from16 v17, v14

    .end local v14  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .local v17, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3050
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iput v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 3052
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 3053
    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-static {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 3056
    nop

    .line 3057
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3058
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 3059
    return-void

    .line 3038
    .end local v0  # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v3  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v17  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v14  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_88
    move-exception v0

    move-object/from16 v17, v14

    .end local v14  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v17  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_8b
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8d

    throw v0

    :catchall_8d
    move-exception v0

    goto :goto_8b
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 3135
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3136
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3137
    .local v1, "focusedWindowId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 3138
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3140
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 3141
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 3140
    .end local v1  # "focusedWindowId":I
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8
    .param p1, "windowId"  # I

    .line 3145
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .registers 4
    .param p1, "windowId"  # I

    .line 3063
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3064
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v1

    .line 3065
    .local v1, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v1, :cond_11

    .line 3066
    monitor-exit v0

    return-void

    .line 3068
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1c

    .line 3070
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 3075
    goto :goto_1b

    .line 3071
    :catch_1a
    move-exception v0

    .line 3076
    :goto_1b
    return-void

    .line 3068
    .end local v1  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .registers 11
    .param p1, "outPoint"  # Landroid/graphics/Point;

    .line 3097
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3098
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3099
    return v1

    .line 3102
    :cond_8
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3103
    :try_start_f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v3

    .line 3104
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3107
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 3108
    .local v4, "spec":Landroid/view/MagnificationSpec;
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3109
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    float-to-int v5, v5

    iget v6, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3110
    const/high16 v5, 0x3f800000  # 1.0f

    iget v6, v4, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 3114
    :cond_3d
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3115
    .local v5, "windowBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    .line 3116
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 3117
    monitor-exit v2

    return v1

    .line 3121
    :cond_54
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v6

    .line 3122
    .local v6, "screenSize":Landroid/graphics/Point;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3123
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, v1, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 3124
    monitor-exit v2

    return v1

    .line 3127
    :cond_6b
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Point;->set(II)V

    .line 3128
    .end local v3  # "boundsInScreen":Landroid/graphics/Rect;
    .end local v4  # "spec":Landroid/view/MagnificationSpec;
    .end local v5  # "windowBounds":Landroid/graphics/Rect;
    .end local v6  # "screenSize":Landroid/graphics/Point;
    monitor-exit v2

    .line 3130
    const/4 v1, 0x1

    return v1

    .line 3128
    :catchall_79
    move-exception v1

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_f .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 4
    .param p1, "action"  # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3089
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3090
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 3093
    :cond_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    return v1

    .line 3091
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    return v1
.end method
