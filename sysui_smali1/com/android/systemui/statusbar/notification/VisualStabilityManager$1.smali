.class Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 75
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->ambient:Z

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1a

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$1;->this$0:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->access$000(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)Landroidx/collection/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method
