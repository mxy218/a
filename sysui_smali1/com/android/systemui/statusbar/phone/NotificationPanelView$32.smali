.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/flyme/systemui/qs/MzQSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setupQsDetail()V
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

    .line 4729
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 6

    return-void
.end method

.method public onShowingDetailStateChanged(Z)V
    .registers 2

    .line 4756
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V

    return-void
.end method

.method public onShowingTilesEdit(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 4748
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V

    goto :goto_e

    .line 4750
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZ)V

    :goto_e
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .registers 2

    return-void
.end method
