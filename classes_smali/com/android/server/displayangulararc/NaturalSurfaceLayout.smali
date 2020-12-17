.class public final Lcom/android/server/displayangulararc/NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "NaturalSurfaceLayout.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# static fields
.field public static final MZ_DISPLAY_DC_LAYER:I = 0x40000007

.field public static final MZ_DISPLAY_SURFACE_LAYER:I = 0x4000000b

.field private static final TAG:Ljava/lang/String; = "NaturalSurfaceLayout"


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mPositionX:I

.field private mPositionY:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;II)V
    .registers 8
    .param p1, "displayManagerInternal"  # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"  # I
    .param p3, "surfaceControl"  # Landroid/view/SurfaceControl;
    .param p4, "positionX"  # I
    .param p5, "positionY"  # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionX:I

    .line 40
    iput v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    .line 45
    iput-object p1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 46
    iput p2, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayId:I

    .line 47
    iput-object p3, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 48
    iget-object v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 49
    iput p4, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionX:I

    .line 50
    iput p5, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    .line 52
    const-string v0, "NaturalSurfaceLayout"

    const-string/jumbo v1, "ok!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 57
    monitor-enter p0

    .line 58
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 59
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 60
    iget-object v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 61
    return-void

    .line 59
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 72
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v1, :cond_69

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    goto :goto_81

    .line 87
    :cond_1d
    iget-object v1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 88
    iget-object v5, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    const/high16 v8, -0x40800000  # -1.0f

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_81

    .line 82
    :cond_36
    iget-object v1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 84
    iget-object v5, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, -0x40800000  # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000  # -1.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 85
    goto :goto_81

    .line 78
    :cond_51
    iget-object v1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 79
    iget-object v5, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/high16 v7, -0x40800000  # -1.0f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 80
    goto :goto_81

    .line 74
    :cond_69
    iget-object v1, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mPositionY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 75
    iget-object v5, p0, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 76
    nop

    .line 91
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    :goto_81
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_83
    move-exception v0

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_83

    throw v0
.end method
