.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->init3PartLockscreen(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .registers 2

    .line 4818
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
