.class public interface abstract Lcom/android/systemui/plugins/DarkIconDispatcher;
.super Ljava/lang/Object;
.source "DarkIconDispatcher.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
    }
.end annotation


# static fields
.field public static final DEFAULT_ICON_TINT:I = -0x1

.field public static final VERSION:I = 0x1

.field public static final sTmpInt2:[I

.field public static final sTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 73
    sput-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpInt2:[I

    return-void
.end method

.method public static getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F
    .registers 3

    .line 92
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p2

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static getTint(Landroid/graphics/Rect;Landroid/view/View;I)I
    .registers 3

    .line 80
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_7

    return p2

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public static isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z
    .registers 7

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 107
    :cond_8
    sget-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    sget-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpInt2:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 109
    sget-object v0, Lcom/android/systemui/plugins/DarkIconDispatcher;->sTmpInt2:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 111
    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    .line 113
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_33

    move p0, v1

    goto :goto_34

    :cond_33
    move p0, v2

    :goto_34
    mul-int/lit8 v0, v0, 0x2

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-le v0, p1, :cond_3e

    move p1, v1

    goto :goto_3f

    :cond_3e
    move p1, v2

    :goto_3f
    if-eqz p1, :cond_44

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    return v1
.end method


# virtual methods
.method public abstract addDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract applyDark(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract removeDarkReceiver(Landroid/widget/ImageView;)V
.end method

.method public abstract removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V
.end method

.method public abstract setIconsDarkArea(Landroid/graphics/Rect;)V
.end method
