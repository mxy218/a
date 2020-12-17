.class public Lcom/android/server/policy/gesture/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field public static final NAVBAR_BOTTOM_GESTURE_SIZE:Ljava/lang/String; = "navigation_bar_gesture_height"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I
    .registers 6
    .param p0, "resName"  # Ljava/lang/String;
    .param p1, "res"  # Landroid/content/res/Resources;
    .param p2, "defaultValue"  # I

    .line 17
    const-string v0, "dimen"

    const-string v1, "android"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "frameSizeResID":I
    if-eqz v0, :cond_f

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "frameSize":I
    goto :goto_18

    .line 21
    .end local v1  # "frameSize":I
    :cond_f
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/policy/gesture/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 23
    .restart local v1  # "frameSize":I
    :goto_18
    return v1
.end method

.method public static getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I
    .registers 3
    .param p0, "resName"  # Ljava/lang/String;
    .param p1, "res"  # Landroid/content/res/Resources;

    .line 12
    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/android/server/policy/gesture/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .registers 3
    .param p0, "size"  # F
    .param p1, "metrics"  # Landroid/util/DisplayMetrics;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
