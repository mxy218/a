.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingTopOverscroll(FZ)V
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

    .line 1826
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 1830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V

    .line 1831
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    return-void
.end method
