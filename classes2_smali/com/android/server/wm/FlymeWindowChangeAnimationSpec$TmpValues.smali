.class Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "FlymeWindowChangeAnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TmpValues"
.end annotation


# instance fields
.field final mFloats:[F

.field final mTransformation:Landroid/view/animation/Transformation;

.field final mVecs:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 198
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mFloats:[F

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;->mVecs:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$1;

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec$TmpValues;-><init>()V

    return-void
.end method
