.class Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;
.super Landroid/database/ContentObserver;
.source "FlymeNotificationManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;Landroid/os/Handler;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;->access$000(Lcom/flyme/systemui/statusbar/policy/FlymeNotificationManagement;)V

    return-void
.end method
