.class Lcom/meizu/settings/deviceinfo/FlymeStatus$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "FlymeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStatus$5;->this$0:Lcom/meizu/settings/deviceinfo/FlymeStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeStatus;->access$400(Lcom/meizu/settings/deviceinfo/FlymeStatus;)V

    return-void
.end method
