.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onIconClicked(ZZ)V
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

    .line 4630
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 4634
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 4635
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    return-void
.end method
