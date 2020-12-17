.class public interface abstract Lcom/android/server/policy/gesture/IGestureListener;
.super Ljava/lang/Object;
.source "IGestureListener.java"


# virtual methods
.method public abstract dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
.end method

.method public abstract interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
.end method

.method public abstract interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingVice(Landroid/view/MotionEvent;)I
.end method

.method public abstract systemReady()V
.end method
