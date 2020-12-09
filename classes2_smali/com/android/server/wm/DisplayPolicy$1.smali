.class Lcom/android/server/wm/DisplayPolicy$1;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarVisibilityChanged(Z)V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 304
    return-void

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 307
    return-void
.end method
