.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplayId:I

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mLock:Ljava/lang/Object;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V
    .registers 5

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1167
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1169
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1171
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 1186
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    .line 1187
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 1188
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 1189
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAnimationDuration()J

    move-result-wide p1

    .line 1190
    iget-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p3}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->newValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 1191
    iget-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1192
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000  # 2.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1193
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_54

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1194
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1195
    return-void

    :array_54
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V
    .registers 5

    .line 1158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .registers 1

    .line 1158
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object p0
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3

    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1247
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v0}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1248
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1249
    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1234
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v0, :cond_16

    .line 1239
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1240
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 1243
    :cond_16
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1253
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v1, :cond_49

    .line 1255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 1256
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 1258
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1261
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1264
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 1266
    :cond_49
    monitor-exit v0

    .line 1267
    return-void

    .line 1266
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 1202
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eq p1, v1, :cond_1f

    .line 1204
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 1205
    iget-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-nez p1, :cond_1f

    .line 1206
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->clear()V

    .line 1207
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 1211
    :cond_1f
    monitor-exit v0

    .line 1212
    return-void

    .line 1211
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V
    .registers 5

    .line 1215
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1216
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1220
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_10
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1222
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_23

    .line 1223
    if-eqz p2, :cond_20

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_23

    .line 1226
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 1229
    :cond_23
    :goto_23
    monitor-exit v0

    .line 1230
    return-void

    .line 1229
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw p1
.end method
