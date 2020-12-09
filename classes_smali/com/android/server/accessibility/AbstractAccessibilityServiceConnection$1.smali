.class Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .registers 3

    .line 257
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    .line 261
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 262
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 263
    :goto_d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v2, v0, v1, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V

    .line 264
    return-void
.end method
