.class final Lcom/android/server/wm/WindowState$MoveAnimationSpec;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoveAnimationSpec"
.end annotation


# instance fields
.field private final mDuration:J

.field private mFrom:Landroid/graphics/Point;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mTo:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;IIII)V
    .registers 9

    .line 5282
    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5279
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 5280
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 5283
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    const v1, 0x10a00c9

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5285
    nop

    .line 5286
    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 5287
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5288
    iget-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 5289
    iget-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 5290
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V
    .registers 7

    .line 5275
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIII)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8

    .line 5299
    long-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->getDuration()J

    move-result-wide v0

    long-to-float p4, v0

    div-float/2addr p3, p4

    .line 5300
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 5301
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p1, p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5303
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 5307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "from="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " duration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5310
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 5294
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    .line 5314
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 5315
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    const-wide v5, 0x10b00000001L

    invoke-virtual {v4, p1, v5, v6}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5316
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    invoke-virtual {v4, p1, v0, v1}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5317
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 5318
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5319
    return-void
.end method
