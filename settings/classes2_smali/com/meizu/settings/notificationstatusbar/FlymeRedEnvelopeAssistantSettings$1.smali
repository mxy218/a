.class Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;
.super Landroid/database/ContentObserver;
.source "FlymeRedEnvelopeAssistantSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;Landroid/os/Handler;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 51
    invoke-static {}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 52
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V

    goto :goto_2f

    .line 53
    :cond_10
    invoke-static {}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$200()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$300(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V

    goto :goto_2f

    .line 55
    :cond_20
    invoke-static {}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$400()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 56
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;)V

    :cond_2f
    :goto_2f
    return-void
.end method
