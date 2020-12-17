.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 136
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const-string v2, "DOUBLE_TAP"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const-string v2, "SINGLE_TAP"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
