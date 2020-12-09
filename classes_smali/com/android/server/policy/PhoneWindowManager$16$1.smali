.class Lcom/android/server/policy/PhoneWindowManager$16$1;
.super Landroid/app/ProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$16;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$16;Landroid/content/Context;I)V
    .registers 4

    .line 5673
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$16$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 5689
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 5677
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 5680
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 5693
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 5683
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 5686
    const/4 p1, 0x1

    return p1
.end method
