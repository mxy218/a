.class Lcom/android/server/policy/PhoneWindowManager$15$1;
.super Landroid/app/ProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$15;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$15;Landroid/content/Context;I)V
    .registers 4
    .param p1, "this$1"  # Lcom/android/server/policy/PhoneWindowManager$15;
    .param p2, "x0"  # Landroid/content/Context;
    .param p3, "x1"  # I

    .line 5178
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$15$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"  # Landroid/view/MotionEvent;

    .line 5194
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 5182
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 5185
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 5198
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"  # Landroid/view/MotionEvent;

    .line 5188
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"  # Landroid/view/MotionEvent;

    .line 5191
    const/4 v0, 0x1

    return v0
.end method
