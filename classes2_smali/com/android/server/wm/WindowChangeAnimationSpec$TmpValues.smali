.class Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowChangeAnimationSpec;
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

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    .line 202
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowChangeAnimationSpec$1;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>()V

    return-void
.end method