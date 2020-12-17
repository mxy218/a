.class Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;
.super Ljava/lang/Object;
.source "FlymeSimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$500(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$002(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 462
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$600(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    .line 463
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$800(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$700(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 467
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$200(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    .line 468
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$300(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    .line 469
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$900(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    return-void
.end method
