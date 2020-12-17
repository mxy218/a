.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDoubleTapListener(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/GestureDetector;)V
    .registers 3

    .line 4658
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->val$gd:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4663
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;->val$gd:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
