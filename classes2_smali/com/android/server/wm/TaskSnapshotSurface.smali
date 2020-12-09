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

    .line 440
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;I)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 238
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

    .line 239
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 240
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 241
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 242
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 243
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 244
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 245
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 246
    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 247
    invoke-virtual {p6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    .line 248
    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v1, -0x1

    :goto_55
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 250
    new-instance v7, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v1, v7

    move/from16 v2, p8

    move/from16 v3, p9

    move v4, p7

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;F)V

    iput-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 252
    invoke-virtual {p6}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 253
    move/from16 v1, p11

    iput v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .registers 34

    .line 140
    move-object/from16 v0, p1

    new-instance v13, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v13}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 141
    new-instance v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v14}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    .line 142
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v15

    .line 143
    invoke-virtual {v14, v15}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 144
    new-instance v19, Landroid/view/SurfaceControl;

    invoke-direct/range {v19 .. v19}, Landroid/view/SurfaceControl;-><init>()V

    .line 145
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 146
    new-instance v17, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct/range {v17 .. v17}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    .line 147
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 149
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 150
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 151
    new-instance v20, Landroid/view/InsetsState;

    invoke-direct/range {v20 .. v20}, Landroid/view/InsetsState;-><init>()V

    .line 152
    new-instance v18, Landroid/util/MergedConfiguration;

    invoke-direct/range {v18 .. v18}, Landroid/util/MergedConfiguration;-><init>()V

    .line 153
    new-instance v9, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v9}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 154
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 159
    move-object/from16 v8, p0

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 162
    const/16 v21, 0x0

    if-nez v4, :cond_73

    .line 163
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskSnapshotSurface.create: Failed to find task for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v21

    .line 167
    :cond_73
    :try_start_73
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 168
    if-nez v5, :cond_98

    .line 169
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v21

    .line 173
    :cond_98
    :try_start_98
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 174
    if-eqz v3, :cond_1d7

    if-nez v5, :cond_a2

    goto/16 :goto_1d7

    .line 179
    :cond_a2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v7

    .line 180
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 183
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v8, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 184
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v8, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 185
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 186
    const/4 v3, 0x3

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v3

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 188
    const v3, -0x3186e039

    and-int/2addr v3, v6

    or-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x10

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 191
    const/high16 v3, 0x20000

    and-int/2addr v3, v1

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 192
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 193
    const/4 v3, -0x1

    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    iput v3, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 195
    iput v7, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 196
    const-string v3, "SnapshotStartingWindow for taskId=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    move/from16 v23, v1

    iget v1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v22

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_112

    .line 200
    invoke-virtual {v9, v1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 202
    :cond_112
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 203
    invoke-virtual {v4, v8}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 204
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 205
    monitor-exit v2
    :try_end_121
    .catchall {:try_start_98 .. :try_end_121} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    :try_start_124
    iget v2, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v4, 0x8

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_130} :catch_174

    const/16 v24, 0x0

    .line 207
    move-object v0, v15

    move-object v1, v14

    move-object v3, v13

    move/from16 v25, v5

    move/from16 v5, v22

    move/from16 v22, v6

    move-object v6, v12

    move/from16 v26, v7

    move-object/from16 v7, v16

    move-object/from16 v27, v8

    move-object/from16 v8, v16

    move-object/from16 v28, v9

    move-object/from16 v9, v16

    move-object/from16 p1, v10

    move-object/from16 v10, v17

    move-object/from16 v29, v11

    move-object/from16 v11, v24

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    :try_start_154
    invoke-interface/range {v0 .. v12}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I

    move-result v0

    .line 210
    if-gez v0, :cond_171

    .line 211
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add snapshot starting window res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_170} :catch_172

    .line 212
    return-object v21

    .line 216
    :cond_171
    goto :goto_185

    .line 214
    :catch_172
    move-exception v0

    goto :goto_185

    :catch_174
    move-exception v0

    move/from16 v25, v5

    move/from16 v22, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 p1, v10

    move-object/from16 v29, v11

    move-object/from16 v24, v12

    .line 217
    :goto_185
    new-instance v12, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 218
    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v6, v28

    move/from16 v7, v26

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v27

    move/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;I)V

    .line 221
    invoke-virtual {v14, v12}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 223
    :try_start_1a5
    iget v2, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I
    :try_end_1a7
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1a7} :catch_1c5

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    move-object v0, v15

    move-object v1, v14

    move-object v3, v13

    move-object/from16 v10, v24

    move-object/from16 v11, v16

    move-object v15, v12

    move-object/from16 v12, v29

    move-object/from16 v13, v16

    move-object/from16 v14, p1

    move-object/from16 v30, v15

    move-object/from16 v15, v16

    :try_start_1bf
    invoke-interface/range {v0 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    :try_end_1c2
    .catch Landroid/os/RemoteException; {:try_start_1bf .. :try_end_1c2} :catch_1c3

    .line 228
    goto :goto_1c8

    .line 226
    :catch_1c3
    move-exception v0

    goto :goto_1c8

    :catch_1c5
    move-exception v0

    move-object/from16 v30, v12

    .line 229
    :goto_1c8
    move-object/from16 v3, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 230
    invoke-direct {v4}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 231
    return-object v4

    .line 175
    :cond_1d7
    :goto_1d7
    :try_start_1d7
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskSnapshotSurface.create: Failed to find main window for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit v2
    :try_end_1ee
    .catchall {:try_start_1d7 .. :try_end_1ee} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v21

    .line 205
    :catchall_1f2
    move-exception v0

    :try_start_1f3
    monitor-exit v2
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private drawSizeMatchSnapshot()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 311
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 313
    return-void
.end method

.method private drawSizeMismatchSnapshot()V
    .registers 9

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 323
    nop

    .line 324
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 325
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 323
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a  # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 328
    :goto_3d
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - task-snapshot-surface"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 332
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 334
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 335
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 338
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 342
    :try_start_86
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->show()V

    .line 343
    const/4 v3, 0x0

    if-eqz v2, :cond_a7

    .line 345
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v4

    .line 346
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 347
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 348
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 349
    goto :goto_a8

    .line 350
    :cond_a7
    move-object v5, v3

    .line 354
    :goto_a8
    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v6

    div-float/2addr v4, v6

    .line 355
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v7, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_b7
    .catchall {:try_start_86 .. :try_end_b7} :catchall_dd

    .line 357
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 358
    nop

    .line 359
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 360
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 362
    if-eqz v2, :cond_dc

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 364
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 368
    :cond_dc
    return-void

    .line 357
    :catchall_dd
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 317
    :cond_e2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSurface does not hold a valid surface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawSnapshot()V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v0, :cond_f

    .line 295
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_12

    .line 297
    :cond_f
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot()V

    .line 299
    :goto_12
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 302
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 303
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 307
    return-void

    .line 302
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportDrawn()V
    .registers 3

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 437
    goto :goto_9

    .line 435
    :catch_8
    move-exception v0

    .line 438
    :goto_9
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 378
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

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 383
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

    .line 384
    :goto_32
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 385
    if-eqz v2, :cond_40

    goto :goto_4b

    :cond_40
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v3, v2

    :goto_4b
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 386
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 387
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 384
    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 388
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 399
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    .line 402
    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 405
    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 408
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v1}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    move-result p1

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 411
    return-object v0
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 417
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

    .line 418
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_20

    goto :goto_21

    :cond_20
    move v5, v6

    .line 419
    :goto_21
    if-eqz v3, :cond_4d

    .line 420
    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    iget v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_32

    int-to-float v2, v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    move v8, v2

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v9, v2

    if-eqz v5, :cond_40

    .line 422
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move v10, v2

    goto :goto_46

    .line 423
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v10, v2

    :goto_46
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 420
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 426
    :cond_4d
    if-eqz v5, :cond_68

    .line 427
    const/4 v13, 0x0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v15, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 429
    :cond_68
    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 430
    return-void
.end method

.method public remove()V
    .registers 8

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 260
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v3, :cond_2b

    iget-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1c2

    cmp-long v1, v1, v3

    if-gez v1, :cond_2b

    .line 261
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 265
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 267
    :cond_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    .line 273
    goto :goto_38

    .line 271
    :catch_37
    move-exception v0

    .line 274
    :goto_38
    return-void

    .line 267
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_36

    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    if-eq p1, v0, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p1, 0x1

    :goto_37
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 283
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 284
    return-void
.end method
