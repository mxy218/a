.class Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$2;
.super Landroid/database/ContentObserver;
.source "NotificationViewHierarchyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Landroid/os/Handler;)V
    .registers 3

    .line 678
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 681
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$000(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "lock_screen_show_notifications"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->access$102(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Z)Z

    return-void
.end method
