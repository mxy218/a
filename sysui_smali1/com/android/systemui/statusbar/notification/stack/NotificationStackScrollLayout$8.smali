.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 615
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$1300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_d
    return-void
.end method
