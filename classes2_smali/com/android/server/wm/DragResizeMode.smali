.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForStack(Lcom/android/server/wm/TaskStack;I)Z
    .registers 4

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_7

    .line 45
    return v0

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result p0

    return p0

    .line 41
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_14

    move v0, v1

    :cond_14
    return v0
.end method
