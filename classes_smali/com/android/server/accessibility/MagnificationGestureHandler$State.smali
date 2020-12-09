.class interface abstract Lcom/android/server/accessibility/MagnificationGestureHandler$State;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "State"
.end annotation


# direct methods
.method public static nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;
    .registers 1

    .line 361
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_7
    const-string/jumbo p0, "null"

    :goto_a
    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 354
    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method
