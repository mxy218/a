.class Lcom/meizu/settings/utils/PhoneStateListenerHepler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "PhoneStateListenerHepler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/PhoneStateListenerHepler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$1;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 3

    .line 35
    invoke-static {}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/utils/PhoneStateListenerHepler$1;->this$0:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-static {p0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->access$100(Lcom/meizu/settings/utils/PhoneStateListenerHepler;)V

    return-void
.end method
