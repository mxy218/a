.class Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;
.super Ljava/lang/Object;
.source "SystemNavigationGestureSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;->handleDetailBtn(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V
    .registers 2

    .line 478
    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;->this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string p1, "SystemNavigationGesture"

    const-string/jumbo v0, "onClick: detail click"

    .line 481
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;->this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->access$000(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$2;->this$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->access$100(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
