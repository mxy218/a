.class final Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/KeyEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingKeyEvent"
.end annotation


# instance fields
.field event:Landroid/view/KeyEvent;

.field handled:Z

.field policyFlags:I

.field referenceCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/accessibility/KeyEventDispatcher$1;

    .line 281
    invoke-direct {p0}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>()V

    return-void
.end method
