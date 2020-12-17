.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 441
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;I)V
    .registers 27
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "window"  # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p3, "surfaceControl"  # Landroid/view/SurfaceControl;
    .param p4, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;
    .param p5, "title"  # Ljava/lang/CharSequence;
    .param p6, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p7, "sysUiVis"  # I
    .param p8, "windowFlags"  # I
    .param p9, "windowPrivateFlags"  # I
    .param p10, "taskBounds"  # Landroid/graphics/Rect;
    .param p11, "currentOrientation"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 241
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 242
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 243
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 244
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 245
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 246
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 247
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 248
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v6

    .line 250
    .local v6, "backgroundColor":I
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_5a

    move v8, v6

    goto :goto_5b

    :cond_5a
    const/4 v8, -0x1

    :goto_5b
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 252
    new-instance v14, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    const/high16 v13, 0x3f800000  # 1.0f

    move-object v8, v14

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p7

    move-object/from16 v12, p6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;F)V

    iput-object v14, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 254
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v8

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 255
    move/from16 v8, p11

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 88
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 88
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .registers 61
    .param p0, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "token"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 140
    move-object/from16 v1, p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    .line 141
    .local v15, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v13, v0

    .line 142
    .local v13, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v11

    .line 143
    .local v11, "session":Landroid/view/IWindowSession;
    invoke-virtual {v13, v11}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 144
    new-instance v39, Landroid/view/SurfaceControl;

    invoke-direct/range {v39 .. v39}, Landroid/view/SurfaceControl;-><init>()V

    .line 145
    .local v39, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v12, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v12}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    .line 147
    .local v12, "tmpCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 149
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    .line 150
    .local v8, "tmpContentInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 151
    .local v7, "tmpStableInsets":Landroid/graphics/Rect;
    new-instance v14, Landroid/view/InsetsState;

    invoke-direct {v14}, Landroid/view/InsetsState;-><init>()V

    .line 152
    .local v14, "mTmpInsetsState":Landroid/view/InsetsState;
    new-instance v33, Landroid/util/MergedConfiguration;

    invoke-direct/range {v33 .. v33}, Landroid/util/MergedConfiguration;-><init>()V

    .line 153
    .local v33, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object v6, v0

    .line 154
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 159
    move-object/from16 v5, p0

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 161
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_27e

    .line 162
    .local v4, "task":Lcom/android/server/wm/Task;
    const/16 v16, 0x0

    if-nez v4, :cond_92

    .line 163
    :try_start_5e
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_87

    move-object/from16 v17, v7

    .end local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    .local v17, "tmpStableInsets":Landroid/graphics/Rect;
    :try_start_67
    const-string v7, "TaskSnapshotSurface.create: Failed to find task for token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 207
    .end local v3  # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v4  # "task":Lcom/android/server/wm/Task;
    :catchall_7b
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    goto/16 :goto_287

    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    :catchall_87
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object v10, v7

    .end local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    goto/16 :goto_287

    .line 167
    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v3  # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v4  # "task":Lcom/android/server/wm/Task;
    .restart local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    :cond_92
    move-object/from16 v17, v7

    .end local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    :try_start_94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_273

    .line 168
    .local v5, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v5, :cond_d5

    .line 169
    :try_start_9e
    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_c9

    move-object/from16 v18, v8

    .end local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .local v18, "tmpContentInsets":Landroid/graphics/Rect;
    :try_start_a7
    const-string v8, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_a7 .. :try_end_b7} :catchall_bb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 207
    .end local v3  # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v4  # "task":Lcom/android/server/wm/Task;
    .end local v5  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    :catchall_bb
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto/16 :goto_287

    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    :catchall_c9
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    .end local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    goto/16 :goto_287

    .line 173
    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v3  # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v4  # "task":Lcom/android/server/wm/Task;
    .restart local v5  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    :cond_d5
    move-object/from16 v18, v8

    .end local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    :try_start_d7
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 174
    .local v7, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_23c

    if-nez v7, :cond_f0

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto/16 :goto_24b

    .line 179
    :cond_f0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v8

    .line 180
    .local v8, "sysUiVis":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v48, v0

    .line 181
    .local v48, "windowFlags":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v49, v0

    .line 183
    .local v49, "windowPrivateFlags":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 185
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 186
    const/4 v0, 0x3

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v0

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 188
    const v0, -0x3186e039

    and-int v0, v48, v0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 191
    const/high16 v0, 0x20000

    and-int v0, v49, v0

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 192
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 193
    const/4 v0, -0x1

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 195
    iput v8, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 196
    const-string v0, "SnapshotStartingWindow for taskId=%s"

    move-object/from16 v19, v3

    .end local v3  # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v19, "mainWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v20, 0x0

    move-object/from16 v21, v5

    .end local v5  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .local v21, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v20

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 200
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0
    :try_end_16b
    .catchall {:try_start_d7 .. :try_end_16b} :catchall_266

    .line 201
    .local v0, "td":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v0, :cond_170

    .line 202
    :try_start_16d
    invoke-virtual {v6, v0}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_bb

    .line 204
    :cond_170
    :try_start_170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v3

    .line 205
    .local v5, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v47, v3

    .line 207
    .end local v0  # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v4  # "task":Lcom/android/server/wm/Task;
    .end local v7  # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .end local v19  # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v21  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .local v47, "currentOrientation":I
    monitor-exit v2
    :try_end_182
    .catchall {:try_start_170 .. :try_end_182} :catchall_266

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 209
    :try_start_185
    iget v4, v13, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v0, 0x8

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7
    :try_end_191
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_191} :catch_1cc

    const/16 v19, 0x0

    .line 209
    move-object v2, v11

    move-object v3, v13

    move-object/from16 v50, v5

    .end local v5  # "taskBounds":Landroid/graphics/Rect;
    .local v50, "taskBounds":Landroid/graphics/Rect;
    move-object v5, v15

    move-object/from16 v51, v6

    .end local v6  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v51, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move v6, v0

    move-object/from16 v52, v17

    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .local v52, "tmpStableInsets":Landroid/graphics/Rect;
    move/from16 v54, v8

    move-object/from16 v53, v18

    .end local v8  # "sysUiVis":I
    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .local v53, "tmpContentInsets":Landroid/graphics/Rect;
    .local v54, "sysUiVis":I
    move-object v8, v10

    move-object/from16 v55, v10

    .end local v10  # "tmpFrame":Landroid/graphics/Rect;
    .local v55, "tmpFrame":Landroid/graphics/Rect;
    move-object v10, v9

    move-object/from16 v56, v11

    .end local v11  # "session":Landroid/view/IWindowSession;
    .local v56, "session":Landroid/view/IWindowSession;
    move-object v11, v9

    move-object/from16 v57, v13

    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v57, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move-object/from16 v13, v19

    :try_start_1ac
    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I

    move-result v0

    .line 212
    .local v0, "res":I
    if-gez v0, :cond_1c9

    .line 213
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1c8} :catch_1ca

    .line 214
    return-object v16

    .line 218
    .end local v0  # "res":I
    :cond_1c9
    goto :goto_1dd

    .line 216
    :catch_1ca
    move-exception v0

    goto :goto_1dd

    .end local v50  # "taskBounds":Landroid/graphics/Rect;
    .end local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v52  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v53  # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v54  # "sysUiVis":I
    .end local v55  # "tmpFrame":Landroid/graphics/Rect;
    .end local v56  # "session":Landroid/view/IWindowSession;
    .end local v57  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5  # "taskBounds":Landroid/graphics/Rect;
    .restart local v6  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v8  # "sysUiVis":I
    .restart local v10  # "tmpFrame":Landroid/graphics/Rect;
    .restart local v11  # "session":Landroid/view/IWindowSession;
    .restart local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    :catch_1cc
    move-exception v0

    move-object/from16 v50, v5

    move-object/from16 v51, v6

    move/from16 v54, v8

    move-object/from16 v55, v10

    move-object/from16 v56, v11

    move-object/from16 v57, v13

    move-object/from16 v52, v17

    move-object/from16 v53, v18

    .line 219
    .end local v5  # "taskBounds":Landroid/graphics/Rect;
    .end local v6  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v8  # "sysUiVis":I
    .end local v10  # "tmpFrame":Landroid/graphics/Rect;
    .end local v11  # "session":Landroid/view/IWindowSession;
    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v50  # "taskBounds":Landroid/graphics/Rect;
    .restart local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v52  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v53  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v54  # "sysUiVis":I
    .restart local v55  # "tmpFrame":Landroid/graphics/Rect;
    .restart local v56  # "session":Landroid/view/IWindowSession;
    .restart local v57  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    :goto_1dd
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 220
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v36, v0

    move-object/from16 v37, p0

    move-object/from16 v38, v57

    move-object/from16 v40, p2

    move-object/from16 v42, v51

    move/from16 v43, v54

    move/from16 v44, v48

    move/from16 v45, v49

    move-object/from16 v46, v50

    invoke-direct/range {v36 .. v47}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;I)V

    move-object v2, v0

    .line 223
    .local v2, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    move-object/from16 v3, v57

    .end local v57  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v3, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 225
    :try_start_1fe
    iget v0, v3, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I
    :try_end_200
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_200} :catch_22d

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, -0x1

    move-object v5, v15

    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v5, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v15, v56

    move-object/from16 v16, v3

    move/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v25, v55

    move-object/from16 v26, v9

    move-object/from16 v27, v53

    move-object/from16 v28, v9

    move-object/from16 v29, v52

    move-object/from16 v30, v9

    move-object/from16 v31, v9

    move-object/from16 v32, v12

    move-object/from16 v34, v39

    move-object/from16 v35, v14

    :try_start_227
    invoke-interface/range {v15 .. v35}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    :try_end_22a
    .catch Landroid/os/RemoteException; {:try_start_227 .. :try_end_22a} :catch_22b

    .line 230
    goto :goto_22f

    .line 228
    :catch_22b
    move-exception v0

    goto :goto_22f

    .end local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_22d
    move-exception v0

    move-object v5, v15

    .line 231
    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_22f
    move-object/from16 v10, v52

    move-object/from16 v8, v53

    move-object/from16 v6, v55

    .end local v52  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v53  # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v55  # "tmpFrame":Landroid/graphics/Rect;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .local v8, "tmpContentInsets":Landroid/graphics/Rect;
    .local v10, "tmpStableInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v8, v10}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 232
    invoke-direct {v2}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 233
    return-object v2

    .line 174
    .end local v2  # "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v47  # "currentOrientation":I
    .end local v48  # "windowFlags":I
    .end local v49  # "windowPrivateFlags":I
    .end local v50  # "taskBounds":Landroid/graphics/Rect;
    .end local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v54  # "sysUiVis":I
    .end local v56  # "session":Landroid/view/IWindowSession;
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v4  # "task":Lcom/android/server/wm/Task;
    .local v5, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v7  # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    .restart local v11  # "session":Landroid/view/IWindowSession;
    .restart local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    :cond_23c
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    .line 175
    .end local v11  # "session":Landroid/view/IWindowSession;
    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .local v3, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v5, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .local v10, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v19  # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v21  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56  # "session":Landroid/view/IWindowSession;
    :goto_24b
    :try_start_24b
    const-string v0, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TaskSnapshotSurface.create: Failed to find main window for token="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v2
    :try_end_262
    .catchall {:try_start_24b .. :try_end_262} :catchall_28c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 207
    .end local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v4  # "task":Lcom/android/server/wm/Task;
    .end local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v7  # "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    .end local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .end local v19  # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v21  # "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    .end local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56  # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    .restart local v11  # "session":Landroid/view/IWindowSession;
    .restart local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    :catchall_266
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    .end local v11  # "session":Landroid/view/IWindowSession;
    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v18  # "tmpContentInsets":Landroid/graphics/Rect;
    .restart local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v8  # "tmpContentInsets":Landroid/graphics/Rect;
    .local v10, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56  # "session":Landroid/view/IWindowSession;
    goto :goto_287

    .end local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56  # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    .restart local v11  # "session":Landroid/view/IWindowSession;
    .restart local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    :catchall_273
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v10, v17

    .end local v11  # "session":Landroid/view/IWindowSession;
    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v17  # "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .local v10, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56  # "session":Landroid/view/IWindowSession;
    goto :goto_287

    .end local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56  # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v7, "tmpStableInsets":Landroid/graphics/Rect;
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    .restart local v11  # "session":Landroid/view/IWindowSession;
    .restart local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_27e
    move-exception v0

    move-object/from16 v51, v6

    move-object v6, v10

    move-object/from16 v56, v11

    move-object v3, v13

    move-object v5, v15

    move-object v10, v7

    .end local v7  # "tmpStableInsets":Landroid/graphics/Rect;
    .end local v11  # "session":Landroid/view/IWindowSession;
    .end local v13  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v3  # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5  # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .local v10, "tmpStableInsets":Landroid/graphics/Rect;
    .restart local v51  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56  # "session":Landroid/view/IWindowSession;
    :goto_287
    :try_start_287
    monitor-exit v2
    :try_end_288
    .catchall {:try_start_287 .. :try_end_288} :catchall_28c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_28c
    move-exception v0

    goto :goto_287
.end method

.method private drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .registers 3
    .param p1, "buffer"  # Landroid/graphics/GraphicBuffer;

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 315
    return-void
.end method

.method private drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V
    .registers 11
    .param p1, "buffer"  # Landroid/graphics/GraphicBuffer;

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 321
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 324
    .local v0, "session":Landroid/view/SurfaceSession;
    nop

    .line 325
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 326
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 324
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a  # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 329
    .local v1, "aspectRatioMismatch":Z
    :goto_37
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - task-snapshot-surface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 333
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 335
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    .line 336
    .local v2, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 339
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 343
    :try_start_80
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->show()V

    .line 344
    const/4 v3, 0x0

    if-eqz v1, :cond_a1

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v4

    .line 347
    .local v4, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 348
    .local v5, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 349
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 350
    .end local v4  # "crop":Landroid/graphics/Rect;
    goto :goto_a2

    .line 351
    .end local v5  # "frame":Landroid/graphics/Rect;
    :cond_a1
    move-object v5, v3

    .line 355
    .restart local v5  # "frame":Landroid/graphics/Rect;
    :goto_a2
    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    div-float/2addr v4, v6

    .line 356
    .local v4, "scale":F
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v7, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_b1
    .catchall {:try_start_80 .. :try_end_b1} :catchall_d1

    .line 358
    .end local v4  # "scale":F
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 359
    nop

    .line 360
    invoke-virtual {v2, p1}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 361
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 363
    if-eqz v1, :cond_d0

    .line 364
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 365
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 367
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 369
    .end local v3  # "c":Landroid/graphics/Canvas;
    :cond_d0
    return-void

    .line 358
    .end local v5  # "frame":Landroid/graphics/Rect;
    :catchall_d1
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3

    .line 319
    .end local v0  # "session":Landroid/view/SurfaceSession;
    .end local v1  # "aspectRatioMismatch":Z
    .end local v2  # "surface":Landroid/view/Surface;
    :cond_d6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSurface does not hold a valid surface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawSnapshot()V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 290
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 292
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v1, :cond_31

    .line 298
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    goto :goto_34

    .line 300
    :cond_31
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot(Landroid/graphics/GraphicBuffer;)V

    .line 302
    :goto_34
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 305
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 306
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 310
    return-void

    .line 305
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private reportDrawn()V
    .registers 3

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 438
    goto :goto_9

    .line 436
    :catch_8
    move-exception v0

    .line 439
    :goto_9
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 379
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 384
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v3

    .line 385
    .local v2, "isTop":Z
    :goto_32
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 386
    if-eqz v2, :cond_40

    goto :goto_4b

    :cond_40
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    :goto_4b
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 387
    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 388
    invoke-virtual {v7}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 385
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    .line 389
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "crop"  # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 399
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 400
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    .line 403
    .local v1, "scale":F
    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 406
    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 409
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result v2

    .line 411
    .local v2, "colorViewLeftInset":I
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    return-object v0
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "c"  # Landroid/graphics/Canvas;
    .param p2, "frame"  # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 418
    .local v2, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_16

    move v3, v5

    goto :goto_17

    :cond_16
    move v3, v6

    .line 419
    .local v3, "fillHorizontally":Z
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_20

    goto :goto_21

    :cond_20
    move v5, v6

    :goto_21
    move v4, v5

    .line 420
    .local v4, "fillVertically":Z
    if-eqz v3, :cond_4e

    .line 421
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_33

    int-to-float v5, v2

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    move v8, v5

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_41

    .line 423
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move v10, v5

    goto :goto_47

    .line 424
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move v10, v5

    :goto_47
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 421
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 427
    :cond_4e
    if-eqz v4, :cond_69

    .line 428
    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    :cond_69
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 431
    return-void
.end method

.method public remove()V
    .registers 10

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 262
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v3, :cond_4f

    iget-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1c2

    cmp-long v3, v3, v5

    if-gez v3, :cond_4f

    .line 263
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v7, v5

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 264
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_4a

    .line 265
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Defer removing snapshot surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 269
    .end local v1  # "now":J
    :cond_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 271
    :try_start_53
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_5e

    const-string v0, "WindowManager"

    const-string v1, "Removing snapshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_65} :catch_66

    .line 275
    goto :goto_67

    .line 273
    :catch_66
    move-exception v0

    .line 276
    :goto_67
    return-void

    .line 269
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "contentInsets"  # Landroid/graphics/Rect;
    .param p3, "stableInsets"  # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v0, 0x1

    :goto_37
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 286
    return-void
.end method
