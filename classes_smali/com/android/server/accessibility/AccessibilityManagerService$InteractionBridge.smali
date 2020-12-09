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
    .registers 19

    .line 3020
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iput-object v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3013
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.server.accessibility"

    const-string v3, "InteractionBridge"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 3021
    new-instance v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 3022
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 3023
    iget v1, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3024
    iget v1, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 3026
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3027
    :try_start_2e
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3028
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_8d

    .line 3029
    new-instance v14, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;

    .line 3030
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 3031
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2508()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v10

    .line 3032
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v12

    .line 3033
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v16

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v11, p1

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v15}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 3040
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    move-object v2, v0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 3042
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 3043
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 3046
    nop

    .line 3047
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 3048
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 3049
    return-void

    .line 3028
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 3125
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3126
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3127
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 3128
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 3130
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1b

    .line 3131
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 3130
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

    .line 3135
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .registers 4

    .line 3053
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3054
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object p1

    .line 3055
    if-nez p1, :cond_11

    .line 3056
    monitor-exit v0

    return-void

    .line 3058
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1c

    .line 3060
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 3065
    goto :goto_1b

    .line 3061
    :catch_1a
    move-exception p1

    .line 3066
    :goto_1b
    return-void

    .line 3058
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .registers 9

    .line 3087
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3088
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3089
    return v1

    .line 3092
    :cond_8
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3093
    :try_start_f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v3

    .line 3094
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3097
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 3098
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3099
    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    float-to-int v5, v5

    iget v6, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3100
    const/high16 v5, 0x3f800000  # 1.0f

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 3104
    :cond_3d
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v4

    .line 3105
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {v5, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    .line 3106
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 3107
    monitor-exit v2

    return v1

    .line 3111
    :cond_54
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    move-result-object v0

    .line 3112
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3113
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, v1, v4, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 3114
    monitor-exit v2

    return v1

    .line 3117
    :cond_6b
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 3118
    monitor-exit v2

    .line 3120
    const/4 p1, 0x1

    return p1

    .line 3118
    :catchall_79
    move-exception p1

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_f .. :try_end_7b} :catchall_79

    throw p1
.end method

.method public performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 4

    .line 3079
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3080
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_1a

    .line 3083
    :cond_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    return p1

    .line 3081
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method
