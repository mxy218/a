.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .registers 4

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 747
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 748
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 749
    iget-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 750
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 753
    monitor-enter p0

    .line 754
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 755
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 756
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 757
    return-void

    .line 755
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    .line 761
    monitor-enter p0

    .line 762
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    .line 763
    monitor-exit p0

    return-void

    .line 766
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 767
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_33

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1e

    goto :goto_72

    .line 782
    :cond_1e
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 783
    iget-object v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/high16 v7, -0x40800000  # -1.0f

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_72

    .line 777
    :cond_33
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 779
    iget-object v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000  # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x40800000  # -1.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 780
    goto :goto_72

    .line 773
    :cond_4b
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 774
    iget-object v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000  # -1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 775
    goto :goto_72

    .line 769
    :cond_60
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 770
    iget-object v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 771
    nop

    .line 786
    :goto_72
    monitor-exit p0

    .line 787
    return-void

    .line 786
    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_74

    throw p1
.end method
